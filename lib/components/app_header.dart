// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:load_file/styles/text.dart';
import 'package:load_file/utils.dart/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;

  const AppHeader({
    super.key,
    required this.title,
    this.leading,
  });

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  AppBar build(BuildContext context) {
    final _brightness = getStatusBarBrightness();

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.green,
        statusBarIconBrightness: _brightness,
        statusBarBrightness: _brightness,
      ),
      backgroundColor: Colors.green,
      title: Text(title, style: headerTextStyles),
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
    );
  }
}
