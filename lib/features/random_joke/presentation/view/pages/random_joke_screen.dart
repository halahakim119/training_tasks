import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/joke_cubit.dart';

class JokesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<JokeCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: const Text('Jokes')),
      body: BlocConsumer<JokeCubit, JokeState>(listener: (context, state) {
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
                child: Container(
              child: Text(data.setup.toString()),
            )),
            error: (error) => Center(
              child: Text(error.toString()),
            ),
          ),
        );
      }),
    );
  }
}
