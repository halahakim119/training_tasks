import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/photo_cubit.dart';
import '../widgets/photo_widget.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PhotoCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: const Text('Photos')),
      body: BlocConsumer<PhotoCubit, PhotoState>(listener: (context, state) {
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
                  return PhotoWidget(
                    albumId: data[index].albumId,
                    id: data[index].id,
                    title: data[index].title,
                    url: data[index].url,
                    thumbnailUrl: data[index].thumbnailUrl,
                  );
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
