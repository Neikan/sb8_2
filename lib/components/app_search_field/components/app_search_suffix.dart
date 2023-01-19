// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:load_file/components/app_search_field/components/app_clean_button.dart';
import 'package:load_file/components/app_search_field/components/app_search_button.dart';

class AppSearchSuffix extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onClear;
  final void Function(String) onSearch;

  AppSearchSuffix({
    super.key,
    required this.controller,
    required this.onClear,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: _fieldListener(),
      builder: (
        BuildContext _,
        AsyncSnapshot<String> snapshot,
      ) {
        if (snapshot.hasError) {
          return const SizedBox();
        }

        final _isValue = snapshot.data != null && snapshot.data!.isNotEmpty;

        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppCleanButton(
              isValue: _isValue,
              onPressed: onClear,
            ),
            AppSearchButton(
              onPressed: _isValue ? () => onSearch(controller.text) : null,
            ),
          ],
        );
      },
    );
  }

  Stream<String> _fieldListener() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 100));

      yield controller.value.text;
    }
  }
}
