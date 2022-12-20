import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/albums_cubit.dart';
import '../widgets/albums_widget.dart';

class AlbumsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AlbumsCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: const Text('albums')),
      body: BlocConsumer<AlbumsCubit, AlbumsState>(listener: (context, state) {
        state.maybeWhen(
            error: (error) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(error)));
            },
            orElse: () {});
      }, builder: (context, state) {
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
                      userId: data[index].userId,
                      id: data[index].id,
                      title: data[index].title);
                },
                itemCount: data.length,
                separatorBuilder: (BuildContext context, _) {
                  return const Divider();
                },
              ),
            ),
            error: (error) => Center(
              child: Text(error.toString()),
            ),
          ),
        );
      }),
    );
  }
}
