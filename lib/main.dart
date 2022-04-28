import 'package:flutter/material.dart';
import 'package:flutter_clean_cubit/core/dependency_injection/dependency_injection.dart';
import 'package:flutter_clean_cubit/presenter/components/custom_error.dart';

import 'core/routes/router.gr.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'POC Flutter Clean Cubit';
    return MaterialApp.router(
      title: title,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      builder: (BuildContext context, Widget? widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return CustomError(errorDetails: errorDetails);
        };
        return widget!;
      },
    );
  }
}
