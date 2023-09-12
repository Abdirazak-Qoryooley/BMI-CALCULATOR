import 'package:flutter/material.dart';

class resultscreen extends StatelessWidget {
  const resultscreen({Key? key, required this.result}) : super(key: key);

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0),
      appBar: AppBar(
        backgroundColor: Color(0xff00A0E21),
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Body Mass Index',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 300,
              height: 350,
              child: Card(
                color: Color(0xff01D1E33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BMI RESULTS',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        result.toStringAsFixed(1),
                        style: TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'NORMAL BMI',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.tealAccent,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Normal BMI range:',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '18.5kg/m2 - 25kg/m2',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Ponderal Index: 10.64 kg/m3',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 220,
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xff0356DA),
                borderRadius: BorderRadius.circular(30)),
            child: GestureDetector(
                onTap: () {},
                child: Center(
                    child: Text(
                  'Save the results',
                  style: TextStyle(color: Colors.white),
                ))),
          )
        ],
      ),
    );
  }
}
