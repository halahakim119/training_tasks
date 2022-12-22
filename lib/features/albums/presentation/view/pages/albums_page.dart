import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/albums_cubit.dart';
import '../widgets/albums_widget.dart';

class AlbumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('albums'),
      ),
      body: BlocBuilder<AlbumsCubit, AlbumsState>(
        builder: (context, state) {
          return Scaffold(
              body: state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (data) => Center(
              child: ListView.separated(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AlbumsWidget(
                      userId: data.albums![index].userId,
                      id: data.albums![index].id,
                      title: data.albums![index].title);
                },
                itemCount: data.albums!.length,
                separatorBuilder: (BuildContext context, _) {
                  return const Divider();
                },
              ),
            ),
            error: (error) => Center(
              child: Text(error.toString()),
            ),
          ));
        },
      ),
    );
  }
}
