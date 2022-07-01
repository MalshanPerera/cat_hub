import 'package:flutter/material.dart';

import 'helpers/app_colors.dart';
import 'helpers/app_routes.dart';
import 'helpers/app_strings.dart';
import 'injection_container.dart';
import 'services/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      navigatorKey: sl<NavigationService>().navigatorKey,
      theme: ThemeData(
        primaryColor: PRIMARY_COLOR,
        primarySwatch: Colors.blue,
      ),
      initialRoute: INITIAL_ROUTE,
      onGenerateRoute: generateRoute,
    );
  }
}
