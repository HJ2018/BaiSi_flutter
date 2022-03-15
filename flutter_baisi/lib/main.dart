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
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        // 修改状态栏字体颜色
          value: SystemUiOverlayStyle.dark,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                brightness: Brightness.light,
                primaryColorBrightness: Brightness.light),
            home: jumpRoot(),
            builder: (context, child) => Scaffold(
              body: GestureDetector(
                onTap: () {
                  FocusScopeNode focusScopeNode = FocusScope.of(context);
                  if (!focusScopeNode.hasPrimaryFocus &&
                      focusScopeNode.focusedChild != null) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                },
                child: child,
              ),
            ),
          )),
    );
  }

  Widget jumpRoot() {
    return const IndexPage();
  }
}
