import 'package:bmi_starting/constants.dart';
import 'package:bmi_starting/components/reuseable_widget.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

// ignore: must_be_immutable
class ResultsPage extends StatelessWidget {
  String result;
  String bmi;
  String interpretation;

  ResultsPage({super.key, required this.result, required this.bmi, required this.interpretation});


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
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              )
            ),
            ),
            BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'RECALCULTE',
            ),
        ],
      ),
    );
  }
}