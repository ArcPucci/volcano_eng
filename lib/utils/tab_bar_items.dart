import 'package:volcano_eng/models/models.dart';

const icons = 'assets/png/icons';

final List<TabBarItem> tabBarItems = [
  const TabBarItem(
    id: 0,
    title: 'Main',
    path: '/',
    asset: '$icons/main.png',
  ),
  const TabBarItem(
    id: 1,
    title: 'Quizzes',
    path: '/quizzes',
    asset: '$icons/game.png',
  ),
  const TabBarItem(
    id: 2,
    title: 'Exam',
    path: '/exam',
    asset: '$icons/direct_box.png',
  ),
  const TabBarItem(
    id: 3,
    title: 'Materials',
    path: '/materials',
    asset: '$icons/book2.png',
  ),
  const TabBarItem(
    id: 4,
    title: 'Settings',
    path: '/settings',
    asset: '$icons/settings.png',
  ),
];
