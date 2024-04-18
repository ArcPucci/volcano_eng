import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volcano_eng/providers/providers.dart';
import 'package:volcano_eng/screens/screens.dart';
import 'package:volcano_eng/services/services.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    final preferences = await SharedPreferences.getInstance();
    final preferencesService = PreferencesService(preferences);

    runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MyApp(preferencesService: preferencesService);
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
  const MyApp({
    super.key,
    required this.preferencesService,
  });

  final PreferencesService preferencesService;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    final firstInit = widget.preferencesService.getFirstInit();

    final premium = widget.preferencesService.getPremium();
    final initLocation = firstInit
        ? '/onboarding'
        : premium
            ? '/'
            : '/premium';

    _router = GoRouter(
      initialLocation: initLocation,
      routes: [
        GoRoute(
          path: '/onboarding',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: OnboardingScreen(
                service: widget.preferencesService,
              ),
            );
          },
        ),
        GoRoute(
          path: '/premium',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: PremiumScreen(onBack: () => context.go('/')),
            );
          },
        ),
        ShellRoute(
          pageBuilder: (context, state, child) {
            final hasBottomBar = (state.fullPath != "/quizzes/quiz");
            final hasVolcano = (state.fullPath == "/quizzes/quiz");
            final inverse = (state.fullPath == "/exam" &&
                !widget.preferencesService.getExam());
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: NavigationScreen(
                path: state.fullPath!,
                inverse: inverse,
                hasVolcano: hasVolcano,
                hasBottomBar: hasBottomBar,
                service: widget.preferencesService,
                child: child,
              ),
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
                      child: LessonsScreen(service: widget.preferencesService),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: 'lesson',
                      pageBuilder: (context, state) {
                        return buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: const LessonScreen(),
                        );
                      },
                    ),
                    GoRoute(
                      path: 'result',
                      pageBuilder: (context, state) {
                        return buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: const ResultScreen(),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: '/quizzes',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const QuizzesScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'quiz',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const QuizScreen(),
                    );
                  },
                ),
                GoRoute(
                  path: 'result',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const QuizResultScreen(),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/exam',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const ExamScreen(),
                );
              },
            ),
            GoRoute(
              path: '/materials',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const MaterialsScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'material',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const MaterialScreen(),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/settings',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const SettingsScreen(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: widget.preferencesService),
        ChangeNotifierProvider(
          create: (context) => LessonsProvider(
            router: _router,
            service: widget.preferencesService,
          )..init(),
        ),
        ChangeNotifierProvider(
          create: (context) => MaterialsProvider(
            router: _router,
            service: widget.preferencesService,
          )..init(),
        ),
        ChangeNotifierProvider(
          create: (context) => QuizProvider(
            router: _router,
            service: widget.preferencesService,
            materialsProvider: Provider.of(context, listen: false),
            lessonsProvider: Provider.of(context, listen: false),
          )..init(),
        ),
        ChangeNotifierProvider(
          create: (context) => ExamProvider(
            router: _router,
            service: widget.preferencesService,
          )..init(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
