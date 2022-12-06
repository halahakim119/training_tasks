import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:math' as math;

import 'package:training_tasks/features/smartphones/presentation/logic/cubit/smartphones_cubit.dart';
import 'package:training_tasks/features/smartphones/presentation/view/widgets/all_smartphones_widget.dart';

class SmartphonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SmartphonesCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: Text('smartphones')),
      body: BlocConsumer<SmartphonesCubit, SmartphonesState>(
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
                  return AllSmartphonesWidget(
                    id: data.products![index].id,
                    title: data.products![index].title,
                    thumbnail: data.products![index].thumbnail,
                    description: data.products![index].description,
                    price: data.products![index].price,
                    discountPercentage:
                        data.products![index].discountPercentage,
                    rating: data.products![index].rating,
                    stock: data.products![index].stock,
                    brand: data.products![index].brand,
                    category: data.products![index].category,
                    images: data.products![index].images,
                  );
                },
                itemCount: data.products!.length,
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
