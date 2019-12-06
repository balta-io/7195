import 'package:eggs/pages/splash.page.dart';
import 'package:eggs/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blocs/app.bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Eggs',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: SplashPage(),
    );
  }
}
