import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:volcano_eng/screens/screens.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return const MyApp();
      },
    ));
  }, (error, stack) {});
}

CustomTransitionPage buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool opaque = true,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: Duration.zero,
    opaque: opaque,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      routes: [
        ShellRoute(
          pageBuilder: (context, state, child) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: NavigationScreen(child: child),
            );
          },
          routes: [
            GoRoute(
              path: '/',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const LevelsScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'lessons',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const LessonsScreen(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
