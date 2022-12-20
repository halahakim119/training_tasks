import 'package:flutter/material.dart';

class AlbumsWidget extends StatelessWidget {
  final int? userId;
  final int? id;
  final String? title;

  const AlbumsWidget({super.key, this.userId, this.id, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(userId.toString()),
        Text(id.toString()),
        Text(title.toString()),
      ],
    );
  }
}
