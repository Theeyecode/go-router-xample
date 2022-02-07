import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/data/dummy_data.dart';
import 'package:test_app/screens/subroutes/familyscreen.dart';
import 'package:test_app/screens/subroutes/homescreen.dart';
import 'package:test_app/screens/subroutes/personscreen.dart';

import 'screens/push/page1screen.dart';
import 'screens/push/page2screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Page1ScreenWithPush(),
      ),
      GoRoute(
        path: '/page2',
        builder: (context, state) => Page2ScreenWithPush(
          int.parse(state.queryParams['push-count']!),
        ),
      ),
    ],
  );

// subroute
  // final _router = GoRouter(routes: [
  //   GoRoute(
  //       path: '/',
  //       builder: (context, state) => HomeScreen(
  //             families: Families.data,
  //           ),
  //       routes: [
  //         GoRoute(
  //             path: 'family/:fid',
  //             builder: (context, state) =>
  //                 FamilyScreen(family: Families.family(state.params['fid']!)),
  //             routes: [
  //               GoRoute(
  //                   path: 'person/:pid',
  //                   builder: (context, state) {
  //                     final family = Families.family(state.params['fid']!);
  //                     final person = family.person(state.params['pid']!);
  //                     return PersonScreen(family: family, person: person);
  //                   }),
  //             ])
  //       ])
  // ]);
}
