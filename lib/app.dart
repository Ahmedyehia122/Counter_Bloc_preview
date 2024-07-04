import 'package:bascketball_counterapp_copy/views/points_counter_view.dart';
import 'package:flutter/material.dart';

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounterView(),
    );
  }
}
