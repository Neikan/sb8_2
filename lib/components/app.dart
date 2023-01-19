// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:load_file/screens/screen_search.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenSearch(),
    );
  }
}
