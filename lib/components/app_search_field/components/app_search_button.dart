// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:load_file/styles/text.dart';

class AppSearchButton extends StatelessWidget {
  final VoidCallback? onPressed;

  AppSearchButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        'Найти',
        style: getBaseTextStyle(),
      ),
      onPressed: onPressed != null ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          onPressed != null ? Colors.green : Colors.green.shade300,
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.green.shade700,
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
