// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:load_file/components/app_search_field/components/app_search_suffix.dart';
import 'package:load_file/styles/text.dart';

class AppSearchField extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onClear;
  final void Function(String) onSearch;
  final EdgeInsets? padding;

  AppSearchField({
    super.key,
    required this.controller,
    required this.onClear,
    required this.onSearch,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextField(
        controller: controller,
        cursorColor: Colors.green,
        decoration: _getInputDecoration(),
      ),
    );
  }

  InputDecoration _getInputDecoration() {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 0.0,
      ),
      constraints: BoxConstraints(
        maxHeight: 56.0,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
          width: 2.0,
        ),
      ),
      labelText: 'Поиск...',
      labelStyle: getBrandTextStyle(color: Colors.green),
      suffixIcon: AppSearchSuffix(
        controller: controller,
        onClear: onClear,
        onSearch: onSearch,
      ),
      hintText: 'Введите название файла',
      hintStyle: getBaseTextStyle(color: Colors.grey),
    );
  }
}
