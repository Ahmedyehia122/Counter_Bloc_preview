import 'package:bascketball_counterapp_copy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PointsCounterViewBody extends StatefulWidget {
  const PointsCounterViewBody({super.key});

  @override
  State<PointsCounterViewBody> createState() => _PointsCounterViewBodyState();
}

class _PointsCounterViewBodyState extends State<PointsCounterViewBody> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
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
                      '$teamAPoints',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    CustomElevatedButton(
                        buttonName: 'Add 1 Point ',
                        onPressed: () {
                          setState(() {});
                          teamAPoints++;
                        }),
                    CustomElevatedButton(
                        buttonName: 'Add 2 Point ',
                        onPressed: () {
                          setState(() {});
                          teamAPoints += 2;
                        }),
                    CustomElevatedButton(
                        buttonName: 'Add 3 Point ',
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
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
                      '$teamBPoints',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    CustomElevatedButton(
                        buttonName: 'Add 1 Point ',
                        onPressed: () {
                          setState(() {});
                          teamBPoints++;
                        }),
                    CustomElevatedButton(
                        buttonName: 'Add 2 Point ',
                        onPressed: () {
                          setState(() {});
                          teamBPoints += 2;
                        }),
                    CustomElevatedButton(
                        buttonName: 'Add 3 Point ',
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        }),
                  ],
                ),
              ),
            ],
          ),
          CustomElevatedButton(
              buttonName: 'Reset',
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              }),
        ],
      ),
    );
  }
}
