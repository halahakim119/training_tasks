import 'package:flutter/material.dart';

import '../../features/albums/presentation/view/pages/albums_page.dart';
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

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("jokes"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => JokesPage()));
                },
              ),
              ElevatedButton(
                child: const Text("albums"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AlbumsPage()));
                },
              ),
              ElevatedButton(
                child: const Text("football"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => FootballPage()));
                },
              ),
              ElevatedButton(
                child: const Text("Jewelery"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const JeweleryPage()));
                },
              ),
              ElevatedButton(
                child: const Text("smartphones"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SmartphonesPage()));
                },
              ),
              ElevatedButton(
                child: const Text("articles"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ArticlesPage()));
                },
              ),
              ElevatedButton(
                child: const Text("cars"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const CarsPage()));
                },
              ),
              ElevatedButton(
                child: const Text("users"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const UsersPage()));
                },
              ),
              ElevatedButton(
                child: const Text("photos"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => PhotoPage()));
                },
              ),
              ElevatedButton(
                child: const Text("hotel"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Myhomepagescreen()));
                },
              ),
              ElevatedButton(
                child: const Text("instagram"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => InstagramLayout()));
                },
              ),
              ElevatedButton(
                child: const Text("shapes"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ShapesScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
