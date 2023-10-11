import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_toilet/screens/danger_screen.dart';
import 'package:smart_toilet/screens/more_water_screen.dart';
import 'package:smart_toilet/screens/noinfo_screen.dart';
import 'package:smart_toilet/screens/register_screen.dart';
import 'package:smart_toilet/screens/success_screen.dart';

class SmarrtToiletAppRouteName {
  static const String register = 'register';
  static const String danger = 'danger';
  static const String success = 'success';
  static const String moreWater = 'moreWater';
  static const String noInfo = 'noInfo';
}

class SmartToiletAppRouter {
  static GoRouter router = GoRouter(initialLocation: "/", routes: [
    GoRoute(
      name: SmarrtToiletAppRouteName.register,
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: const RegisterScreen());
      },
    ),
    GoRoute(
      name: SmarrtToiletAppRouteName.danger,
      path: '/danger',
      pageBuilder: (context, state) {
        return const MaterialPage(child: DangerScreen());
      },
    ),
    GoRoute(
      name: SmarrtToiletAppRouteName.success,
      path: '/success',
      pageBuilder: (context, state) {
        return const MaterialPage(child: SucccessScreen());
      },
    ),
    GoRoute(
      name: SmarrtToiletAppRouteName.moreWater,
      path: '/moreWater',
      pageBuilder: (context, state) {
        return const MaterialPage(child: MoreWaterScreen());
      },
    ),
    GoRoute(
      name: SmarrtToiletAppRouteName.noInfo,
      path: '/noInfo',
      pageBuilder: (context, state) {
        return const MaterialPage(child: NoInfoScreen());
      },
    )
  ]);
}
