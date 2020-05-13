import 'package:flutter/material.dart';
import 'package:ieatta/HelperClasses/themes.dart';
import 'package:ieatta/models/CustomTheme.dart';
import 'package:ieatta/store.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ieatta/routes/namedRoutes.dart';

void main() => runApp(
      CustomTheme(
        initialThemeKey: ThemeKeys.White,
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  final String title = "The Project Quote";

  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: new MaterialApp(
          title: title,
          theme: CustomTheme.of(context),
          home: Scaffold(
            backgroundColor: Colors.black,
            body: Routes(),
          ),
        ));
  }
}
