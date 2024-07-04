import 'package:bascketball_counterapp_copy/cubits/cubit/counter_cubit.dart';
import 'package:bascketball_counterapp_copy/views/points_counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PointsCounterView(),
      ),
    );
  }
}
