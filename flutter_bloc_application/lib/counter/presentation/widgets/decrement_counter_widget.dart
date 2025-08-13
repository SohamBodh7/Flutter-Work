import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_application/counter/presentation/bloc/counter_bloc.dart';

class DecrementCounterWidget extends StatelessWidget {
  const DecrementCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return ElevatedButton(
      onPressed: () {
        counterBloc.add(CounterDecrementedEvent());
      },
      child: const Icon(Icons.remove),
    );
  }
}
