import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/cars_cubit.dart';
import '../widgets/cars_widget.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CarsCubit>(context).fetchData();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('All cars'),
      ),
      body: BlocConsumer<CarsCubit, CarsState>(listener: (context, state) {
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
                  return CarsWidget(
                    id: data.cars![index].id,
                    car: data.cars![index].car,
                    carModel: data.cars![index].carModel,
                    carColor: data.cars![index].carColor,
                    carModelYear: data.cars![index].carModelYear,
                    carVin: data.cars![index].carVin,
                    price: data.cars![index].price,
                    availability: data.cars![index].availability,
                  );
                },
                itemCount: data.cars!.length,
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
    ));
  }
}
