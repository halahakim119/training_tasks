import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_tasks/features/users/presentation/bloc/user_bloc.dart';
import 'package:training_tasks/features/users/presentation/widgets/message_display_widget.dart';
import 'package:training_tasks/features/users/presentation/widgets/user_widget.dart';

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
                  return UserWidget(
                    id: state.user[index].id,
                    firstName: state.user[index].firstName,
                    lastName: state.user[index].lastName,
                    phoneNumber: state.user[index].phoneNumber,
                    streetAddress: state.user[index].address.streetAddress,
                    creditCardNumber: state.user[index].creditCard.ccNumber,
                  );
                },
                itemCount: state.user.length,
              ),
            );
          }
          if (state is userErrorState) {
            return Center(
              child: MessageDisplayWidget(message: state.error),
            );
          }
          return const Center(child: Text('h'));
        },
      ),
    );
  }
}
