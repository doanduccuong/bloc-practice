import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_bloc/bloc/app_bloc.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (BuildContext context, state) {
          if (state is HandledEventState) {
            return Scaffold(
              floatingActionButton: IconButton(
                onPressed: () {
                  BlocProvider.of<AppBloc>(context)
                      .add(IncreaseEvent(number: state.number));
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              body: Container(
                alignment: Alignment.center,
                child: Text('${state.number}'),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
