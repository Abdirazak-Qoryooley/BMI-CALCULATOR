import 'package:bmi_calculator/results.dart';
import 'package:bmi_calculator/widgets/rawbuttons.dart';
import 'package:bmi_calculator/widgets/reusable_carts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double height = 180;

  int weight = 65;
  int age = 20;
  Gender selectedgender = Gender.male;
  void gotoscreenresult() {
    double _result = weight / pow(height / 100, 2);
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => resultscreen(result: _result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xff01D1E33),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusable_carts(
                    name: 'MALE',
                    selected: selectedgender == Gender.male ? true : false,
                    onpressed: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: reusable_carts(
                    selected: selectedgender == Gender.female ? true : false,
                    name: 'FEMALE',
                    onpressed: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 170,
            margin: EdgeInsets.all(10),
            color: Color(0xff01D1E33),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Height(cm)',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toInt().toString(),
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      activeTickMarkColor: Colors.grey,
                      activeTrackColor: Colors.white,
                      inactiveTickMarkColor: Colors.grey,
                      inactiveTrackColor: Colors.grey,
                      thumbShape:
                          RoundSliderThumbShape(disabledThumbRadius: 16)),
                  child: Column(
                    children: [
                      Slider(
                          value: height,
                          max: 300,
                          min: 50,
                          onChanged: (newval) {
                            height = newval;
                            print(newval);
                            setState(() {});
                          }),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '50 cm',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text('300 cm',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xff01D1E33),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT(kg)',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              weight.toString(),
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            // Text(
                            //   'Kg',
                            //   style: TextStyle(
                            //       fontSize: 15, color: Colors.white38),
                            // )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            rawbuttons(
                              icons: CupertinoIcons.minus,
                              onpressed: (() {
                                setState(() {
                                  weight--;
                                });
                              }),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            rawbuttons(
                              icons: CupertinoIcons.plus,
                              onpressed: (() {
                                setState(() {
                                  weight++;
                                });
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xff01D1E33),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              age.toString(),
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Text(
                              'years',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white38),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            rawbuttons(
                              icons: CupertinoIcons.minus,
                              onpressed: (() {
                                setState(() {
                                  age--;
                                });
                              }),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            rawbuttons(
                              icons: CupertinoIcons.plus,
                              onpressed: (() {
                                setState(() {
                                  age++;
                                });
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 220,
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xff0356DA),
                borderRadius: BorderRadius.circular(30)),
            child: GestureDetector(
                onTap: () {
                  gotoscreenresult();
                },
                child: Center(
                    child: Text(
                  'Calculate BMI',
                  style: TextStyle(color: Colors.white),
                ))),
          )
        ],
      ),
    );
  }
}


      // RawMaterialButton(
      //       onPressed: () {
      //         gotoscreenresult();
      //       },
      //       child: Text(
      //         'Calculator',
      //         style: TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white),
      //       ),
      //       fillColor: Colors.redAccent,
      //       constraints:
      //           BoxConstraints.tightFor(width: double.infinity, height: 56),
      //     ),