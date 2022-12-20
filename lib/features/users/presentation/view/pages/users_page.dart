import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/users_cubit.dart';
import '../widgets/user_widget.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UsersCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(title: const Text('users')),
      body: BlocConsumer<UsersCubit, UsersState>(listener: (context, state) {
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
                  return UserWidget(
                    id: data[index].id,
                    firstName: data[index].firstName,
                    lastName: data[index].lastName,
                    phoneNumber: data[index].phoneNumber,
                    streetAddress: data[index].address.streetAddress,
                    creditCardNumber: data[index].creditCard.ccNumber,
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
