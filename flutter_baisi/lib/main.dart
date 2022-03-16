import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pages/Other/IndexPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                brightness: Brightness.light,
                primaryColorBrightness: Brightness.light),
            home: jumpRoot(),
          )),
    );
  }

  Widget jumpRoot() {
    return const IndexPage();
  }
}
