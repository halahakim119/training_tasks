import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_tasks/features/users/presentation/bloc/user_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('All users'),
      ),
      body: _buildBody(),
    ));
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserLoadedState) {
            return Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      ' user ${state.user[index].id}',
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Name: ${state.user[index].firstName} ${state.user[index].lastName} '),
                            Text(
                                'phone number ${state.user[index].phoneNumber}'),
                            Text(
                                'street address ${state.user[index].address.streetAddress}'),
                            Text(
                                'Credit Card number ${state.user[index].creditCard.ccNumber}'),
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: state.user.length,
              ),
            );
          }
          if (state is userErrorState) {
            return Center(
              child: Text(state.error.toString()),
            );
          }
          return const Center(child: Text('h'));
        },
      ),
    );
  }
}
