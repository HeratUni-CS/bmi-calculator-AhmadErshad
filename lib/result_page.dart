import 'package:bmi_starting/constants.dart';
import 'package:bmi_starting/reuseable_widget.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Your Result',
              style: kTitleTextStyle,),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "25",
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "You are good to go",
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              )
            ))
        ],
      ),
    );
  }
}