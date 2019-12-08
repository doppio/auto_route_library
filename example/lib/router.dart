//--------------------------------------------------------------------------
// GENERATED BY AutoRoute LIBRARY - DO NOT MODIFY BY HAND
//---------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:example/screens/home.dart';
import 'package:example/screens/second_page.dart';

class Router {
  static const initialRoute = '/';
  static const secondScreenRoute = '/secondScreenRoute';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case secondScreenRoute:
        if (_hasInvalidArgs<SecondScreenArguments>(args))
          return _misTypedArgsRoute<SecondScreenArguments>(args);
        final typedArgs =
            args as SecondScreenArguments ?? SecondScreenArguments();
        return MaterialPageRoute(
          builder: (_) =>
              SecondScreen(title: typedArgs.title, message: typedArgs.message),
          settings: settings,
        );
      default:
        return _unknownRoutePage(settings.name);
    }
  }

  static PageRoute _unknownRoutePage(String routeName) => MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Container(
            color: Colors.redAccent,
            width: MediaQuery.of(ctx).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Route name $routeName is not found!',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                OutlineButton.icon(
                  label: Text('Back'),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(ctx).pop(),
                )
              ],
            ),
          ),
        ),
      );
  static bool _hasInvalidArgs<T>(Object args) {
    return (args != null && args is! T);
  }

  static PageRoute _misTypedArgsRoute<T>(Object args) {
    return MaterialPageRoute(
      builder: (ctx) => Scaffold(
        body: Container(
          color: Colors.redAccent,
          width: MediaQuery.of(ctx).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Arguments Mistype!',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Expected (${T.toString()}),  found (${args.runtimeType})',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              OutlineButton.icon(
                label: Text('Back'),
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(ctx).pop(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//--------------------------------------------------------------------------
// Arguments holder classes
//---------------------------------------------------------------------------

//SecondScreen arguments holder class
class SecondScreenArguments {
  final String title;
  final String message;
  SecondScreenArguments({this.title, this.message});
}
