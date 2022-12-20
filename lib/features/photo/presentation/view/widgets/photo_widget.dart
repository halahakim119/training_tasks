import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  const PhotoWidget(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(albumId.toString()),
      Text(id.toString()),
      Text(title.toString()),
      SizedBox(
        width: 100,
        height: 100,
        child: CachedNetworkImage(
          imageUrl: url.toString(),
          fit: BoxFit.contain,
        ),
      ),
      SizedBox(
        width: 100,
        height: 100,
        child: CachedNetworkImage(
          imageUrl: thumbnailUrl.toString(),
          fit: BoxFit.contain,
        ),
      ),
    ]);
  }
}
