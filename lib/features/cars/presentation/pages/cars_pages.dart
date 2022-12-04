import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_tasks/features/cars/presentation/bloc/cars_bloc.dart';
import 'package:training_tasks/features/cars/presentation/widgets/cars_widget.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('All cars'),
      ),
      body: _buildBody(),
    ));
  }

  Widget _buildBody() {
    return BlocBuilder<CarsBloc, CarsState>(
      builder: (context, state) {
        if (state is CarsLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CarsLoadedState) {
          return Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CarsWidget(
                  id: state.cars.cars![index].id,
                  car: state.cars.cars![index].car,
                  carColor: state.cars.cars![index].carColor,
                  carModel: state.cars.cars![index].carModel,
                  carModelYear: state.cars.cars![index].carModelYear,
                  carVin: state.cars.cars![index].carVin,
                  price: state.cars.cars![index].price,
                  availability: state.cars.cars![index].availability,
                );
              },
              itemCount: state.cars.cars!.length,
            ),
          );
        }
        if (state is carsErrorState) {
          return Center(child: Text(state.error));
        }
        return const Center(child: Text('undefined error'));
      },
    );
  }
}
