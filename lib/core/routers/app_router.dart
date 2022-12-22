import 'package:flutter/material.dart';

import '../../features/albums/presentation/view/pages/all_albums_Page.dart';
import '../../features/articles/presentation/view/pages/articles_page.dart';
import '../../features/cars/presentation/view/pages/cars_pages.dart';
import '../../features/football/presentation/view/pages/football_page.dart';
import '../../features/hotel/presentaion/pages/my_home_page_screen.dart';
import '../../features/instagram/presentation/widgets/instagram_layout.dart';
import '../../features/jewelery/presentation/view/pages/jewelery_page.dart';
import '../../features/photo/presentation/view/pages/photo_page.dart';
import '../../features/random_joke/presentation/view/pages/random_joke_screen.dart';
import '../../features/shapes/presentation/pages/shapes_screen.dart';
import '../../features/smartphones/presentation/view/pages/smartphones_page.dart';
import '../../features/users/presentation/view/pages/users_page.dart';
import '../tasks_home/tasks_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      case '/jokes':
        return MaterialPageRoute(builder: (_) => JokesPage());

      case '/albums':
        return MaterialPageRoute(builder: (_) => const AllAlbumsPage());

      case '/football':
        return MaterialPageRoute(builder: (_) => FootballPage());

      case '/Jewelery':
        return MaterialPageRoute(builder: (_) => const JeweleryPage());

      case '/smartphones':
        return MaterialPageRoute(builder: (_) => SmartphonesPage());

      case '/articles':
        return MaterialPageRoute(builder: (_) => ArticlesPage());

      case '/cars':
        return MaterialPageRoute(builder: (_) => const CarsPage());

      case '/users':
        return MaterialPageRoute(builder: (_) => const UsersPage());

      case '/photos':
        return MaterialPageRoute(builder: (_) => PhotoPage());

      case '/hotel':
        return MaterialPageRoute(builder: (_) => Myhomepagescreen());

      case '/instagram':
        return MaterialPageRoute(builder: (_) => InstagramLayout());

      case '/shapes':
        return MaterialPageRoute(builder: (_) => const ShapesScreen());

      default:
        return null;
    }
  }
}
