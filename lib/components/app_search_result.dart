// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:load_file/components/app_loader.dart';
import 'package:load_file/components/app_search_field/app_search_field.dart';
import 'package:load_file/styles/text.dart';
import 'package:load_file/utils.dart/fetch_file.dart';

class AppSearchResult extends StatefulWidget {
  const AppSearchResult({super.key});

  @override
  State<AppSearchResult> createState() => _AppSearchResultState();
}

class _AppSearchResultState extends State<AppSearchResult> {
  String fileName = '';
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSearchField(
          controller: searchController,
          onClear: _handleClear,
          onSearch: _handleSearch,
          padding: EdgeInsets.only(bottom: 16.0),
        ),
        _buildResult(),
      ],
    );
  }

  _handleSearch(String filePath) {
    setState(() {
      fileName = filePath;
    });
  }

  _handleClear() {
    setState(() {
      fileName = '';
    });

    searchController.clear();
  }

  Widget _buildResult() {
    if (fileName.isEmpty) {
      return const SizedBox();
    }

    return Expanded(
      child: FutureBuilder(
        future: fetchFileFromAssets('assets/$fileName.txt'),
        builder: (BuildContext context, AsyncSnapshot dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.done) {
            if (dataSnapshot.hasError) {
              return Center(
                child: Text(
                  'Файл не найден',
                  style: getBrandTextStyle(fontSize: 20),
                ),
              );
            }

            return SingleChildScrollView(
              child: Text(dataSnapshot.data),
            );
          }

          return AppLoader();
        },
      ),
    );
  }
}
