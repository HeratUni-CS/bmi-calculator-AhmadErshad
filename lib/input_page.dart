// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_widget.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
  

  enum Gender{
    male,
    female
  }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

    Gender? selectedGender;
    int height = 175;
    int weight = 70;
    int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              ReusableWidget(
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                color: (selectedGender == Gender.male) ? kActiveCardColor: kInActiveCardColor,
                child: IconContent(iconData: FontAwesomeIcons.mars, label: 'MALE'),
                ),
              Expanded(
                child: ReusableWidget(
                  onPressed: () {
                    selectedGender = Gender.female;
                  },
                  color: (selectedGender == Gender.female) ? kActiveCardColor: kInActiveCardColor,
                  child: IconContent(
                    iconData: FontAwesomeIcons.venus,
                    label: 'FEMALE',),
                  ),
              ),
            ],
          ),
          ),
           Expanded(
             child: ReusableWidget(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                        ),
                      const Text(
                        'cm'
                        , style: kLabelStyle,
                        ), 
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      trackHeight: 1,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF888993),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x27EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double value){
                        setState(() {
                          height = value.round();
                        });
                      },
                      min: 120,
                      max: 220,
                    ),
                  ),
                ],
              ),
              ),
           ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableWidget(color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'WEIGHT',
                     style: kLabelStyle,
                     ),
                     Text(
                      weight.toString(),
                      style: kNumberStyle,
                      ), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            iconData: Icons.remove,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(onPressed: (){
                            setState(() {
                              weight++;
                            });
                          }, iconData: Icons.add,),
              
                        ],
                      ),
                  ],
                ),
                ),
              ),
              Expanded(
                child: ReusableWidget(color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Age',
                     style: kLabelStyle,
                     ),
                     Text(
                      age.toString(),
                      style: kNumberStyle,
                      ), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            iconData: Icons.remove,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(onPressed: (){
                            setState(() {
                              age++;
                            });
                          }, iconData: Icons.add,),
              
                        ],
                      ),
                  ],
                ),
                ),
              ),
            ],
          ),
          ),
          BottomButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) {
                return const ResultsPage();
              },
              ),
              );
            },
            label: 'CALCULATE YOUR BMI',
          ),
        ],
        ),
    );
  }
}


