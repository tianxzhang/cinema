import 'package:cinema/application.dart';
import 'package:cinema/screens/home_page.dart';
import 'package:cinema/screens/splash.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  Application application = Application();
  await application.setup();
  runApp(MultiProvider(
    providers: [
      Provider.value(value: application.repository),
      ChangeNotifierProvider<ThemeState>(
        create: (_) => ThemeState(),
      )
    ],
    child: MyApp(),
  ));
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, canvasColor: Colors.transparent),
      home: Splash(),
    );
  }
}
