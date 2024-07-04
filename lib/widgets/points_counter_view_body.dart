import 'package:bascketball_counterapp_copy/cubits/cubit/counter_cubit.dart';
import 'package:bascketball_counterapp_copy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounterViewBody extends StatelessWidget {
  const PointsCounterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamACounter}',
                          style: const TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        CustomElevatedButton(
                            buttonName: 'Add 1 Point ',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'A', buttonNumber: 1);
                            }),
                        CustomElevatedButton(
                            buttonName: 'Add 2 Point ',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'A', buttonNumber: 2);
                            }),
                        CustomElevatedButton(
                            buttonName: 'Add 3 Point ',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'A', buttonNumber: 3);
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBCounter}',
                          style: const TextStyle(
                            fontSize: 50,
                          ),
                        ),
                        CustomElevatedButton(
                            buttonName: 'Add 1 Point ',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'B', buttonNumber: 1);
                            }),
                        CustomElevatedButton(
                            buttonName: 'Add 2 Point ',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'B', buttonNumber: 2);
                            }),
                        CustomElevatedButton(
                            buttonName: 'Add 3 Point ',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .incrementTeam(team: 'B', buttonNumber: 3);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              CustomElevatedButton(buttonName: 'Reset', onPressed: () {}),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is IncreaseCouterA) {
          BlocProvider.of<CounterCubit>(context).teamACounter;
        } else if (state is IncreaseCouterB) {
          BlocProvider.of<CounterCubit>(context).teamBCounter;
        }
      },
    );
  }
}
