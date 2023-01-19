// Flutter imports:
import 'package:flutter/material.dart';

class AppCleanButton extends StatelessWidget {
  final bool isValue;
  final VoidCallback onPressed;

  AppCleanButton({
    super.key,
    required this.isValue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return isValue
        ? IconButton(
            icon: const Icon(
              Icons.clear,
              color: Colors.grey,
            ),
            onPressed: onPressed,
          )
        : SizedBox();
  }
}
