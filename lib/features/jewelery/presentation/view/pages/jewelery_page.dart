import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:math' as math;

import 'package:training_tasks/features/jewelery/presentation/logic/cubit/jewelery_cubit.dart';
import 'package:training_tasks/features/jewelery/presentation/view/widgets/all_jewelery_widget.dart';

class JeweleryPage extends StatelessWidget {
  const JeweleryPage({super.key});
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<JeweleryCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: Text('jewelery shop')),
      body: BlocConsumer<JeweleryCubit, JeweleryState>(
          listener: (context, state) {
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
                  return AllJeweleryWidget(
                    id: data[index].id,
                    title: data[index].title,
                    price: data[index].price,
                    description: data[index].description,
                    category: data[index].category,
                    image: data[index].image,
                    rating: data[index].rating,
                  );
                },
                itemCount: data.length,
                separatorBuilder: (BuildContext context, _) {
                  return Divider();
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
