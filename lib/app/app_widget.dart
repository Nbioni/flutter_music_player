import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

import '../routes.dart';
import '../theme.dart';
import '../util.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;
    TextTheme textTheme = createTextTheme(context, "Inter Tight", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      title: 'Flutter Music Player',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: Routefly.routerConfig(
        routes: routes,
      ),
    );
  }
}
