import 'package:flutter/material.dart';

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
                  Navigator.pushNamed(context, '/jokes');
                },
              ),
              ElevatedButton(
                child: const Text("albums"),
                onPressed: () {
                  Navigator.pushNamed(context, '/albums');
                },
              ),
              ElevatedButton(
                child: const Text("football"),
                onPressed: () {
                  Navigator.pushNamed(context, '/football');
                },
              ),
              ElevatedButton(
                child: const Text("Jewelery"),
                onPressed: () {
                  Navigator.pushNamed(context, '/Jewelery');
                },
              ),
              ElevatedButton(
                child: const Text("smartphones"),
                onPressed: () {
                  Navigator.pushNamed(context, '/smartphones');
                },
              ),
              ElevatedButton(
                child: const Text("articles"),
                onPressed: () {
                  Navigator.pushNamed(context, '/articles');
                },
              ),
              ElevatedButton(
                child: const Text("cars"),
                onPressed: () {
                  Navigator.pushNamed(context, '/cars');
                },
              ),
              ElevatedButton(
                child: const Text("users"),
                onPressed: () {
                  Navigator.pushNamed(context, '/users');
                },
              ),
              ElevatedButton(
                child: const Text("photos"),
                onPressed: () {
                  Navigator.pushNamed(context, '/photos');
                },
              ),
              ElevatedButton(
                child: const Text("hotel"),
                onPressed: () {
                  Navigator.pushNamed(context, '/hotel');
                },
              ),
              ElevatedButton(
                child: const Text("instagram"),
                onPressed: () {
                  Navigator.pushNamed(context, '/instagram');
                },
              ),
              ElevatedButton(
                child: const Text("shapes"),
                onPressed: () {
                  Navigator.pushNamed(context, '/shapes');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
