import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

// import '../../../../../injection_container.dart' as di;
import '../../logic/cubit/articles_cubit.dart';
import '../widgets/details.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (_) => di.sl<ArticlesCubit>()..fetchData(),
      create: (_) => GetIt.instance.get<ArticlesCubit>()..fetchData(),
      child: BlocBuilder<ArticlesCubit, ArticlesState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(title: const Text('artiles')),
              body: state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (data) => Center(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        textColor: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                        title: Text(
                            'article ${index + 1}: ${data.articles![index].title}'),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    Details(data: data.articles![index]))),
                      );
                    },
                    itemCount: data.articles!.length,
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
