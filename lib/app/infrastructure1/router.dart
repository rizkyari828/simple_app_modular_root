import 'package:clean_arc_flutter/app/ui/pages/login/view.dart';
import 'package:clean_arc_flutter/app/ui/pages/main/view.dart';
import 'package:clean_arc_flutter/app/ui/pages/pages.dart';
import 'package:clean_arc_flutter/app/ui/pages/splash/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:modular_1/main.dart' as First;
import 'package:sfid_mobile/app/main.dart' as First;

class Router extends Module {
  late RouteObserver<PageRoute> routeObserver;

  Router() {
    routeObserver = RouteObserver<PageRoute>();
  }

  Route<dynamic>? getRoute(RouteSettings? settings) {
    switch (settings?.name) {
      case Pages.main:
        return _buildRoute(settings, new MainPage());
      // case Pages.login:
      //   return _buildRoute(settings, new LoginPage());
      case Pages.login:
        return _buildRoute(settings, new First.MyApp());
      default:
        return null;
    }
  }

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashPage()),
    // ChildRoute(
    //   '/details',
    //   child: (_, args) => DetailsPage(result: args.data),
    //   guards: [
    //     GuardT('/details'),
    //   ],
    // ),
    ChildRoute(
      '/firstApp',
      child: (_, args) => First.MyApp(),
    ),
    ChildRoute(
      '/login',
      child: (_, __) => First.MyApp(),
    ),
    ChildRoute(
      '/MainPage',
      child: (_, __) => First.MyApp(),
    ),
  ];

  MaterialPageRoute _buildRoute(RouteSettings? settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
