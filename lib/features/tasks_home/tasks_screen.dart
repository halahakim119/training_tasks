import 'package:flutter/material.dart';
import 'package:training_tasks/features/albums/presentation/widgets/task4_buttons.dart';
import 'package:training_tasks/features/hotel/presentaion/pages/my_home_page_screen.dart';
import 'package:training_tasks/features/instagram/presentation/widgets/instagram_layout.dart';
import 'package:training_tasks/features/photo/presentation/widgets/api_widget.dart';
import 'package:training_tasks/features/shapes/presentation/pages/shapes_screen.dart';


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
                child: const Text("task 1"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Myhomepagescreen()));
                },
              ),
              ElevatedButton(
                child: const Text("task 2"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ShapesScreen()));
                },
              ),
              ElevatedButton(
                child: const Text("task 3"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => InstagramLayout()));
                },
              ),
              ElevatedButton(
                child: const Text("task 4"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Task4_Buttons()));
                },
              ),
              ElevatedButton(
                child: const Text("task 5"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Task5()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

