import 'package:counter_app/home/cubit/counter_cubit.dart';
import 'package:counter_app/home/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: const Color(0xff084D08),
        centerTitle: true,
        title: const Text('Counter App'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
        return Center(
          child: GestureDetector(
            onTap: (){
              final cubit = context.read<CounterCubit>();
              cubit.decrement();
            },
            child: Text(
              '${state.count}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          final cubit = context.read<CounterCubit>();
          cubit.increment();
        },
      ),
    );
  }
}
