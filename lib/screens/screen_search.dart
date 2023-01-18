// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:load_file/components/app_header.dart';
import 'package:load_file/components/app_search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Найдется все!.. или ничего :)',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: AppSearchResult(),
        ),
      ),
    );
  }
}
