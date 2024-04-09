import 'package:volcano_eng/models/models.dart';

const icons = 'assets/png/icons';

final List<TabBarItem> tabBarItems = [
  TabBarItem(
    id: 0,
    title: 'Main',
    path: '/',
    asset: '$icons/main.png',
  ),
  TabBarItem(
    id: 1,
    title: 'Quizzes',
    path: '/',
    asset: '$icons/game.png',
  ),
  TabBarItem(
    id: 2,
    title: 'Exam',
    path: '/',
    asset: '$icons/direct_box.png',
  ),
  TabBarItem(
    id: 3,
    title: 'Materials',
    path: '/',
    asset: '$icons/book2.png',
  ),
  TabBarItem(
    id: 4,
    title: 'Settings',
    path: '/',
    asset: '$icons/settings.png',
  ),
];
