import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/feature/counter/cubit/counter_cubit.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (_)=>getIt<CounterCubit>(),
      child: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Counter"),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit,CounterState>(
          builder:(context,state)=> Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                "${state.number}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          return context.read<CounterCubit>().increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
