import 'package:flutter/material.dart';
import 'main.dart';


class Result extends StatelessWidget {
  const Result({super.key, required this.bmiResult});

  final String bmiResult;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0D0E1F),
          title: Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'NORMAL',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontSize: 80.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                        child: Column(
                          children: [
                            Text(
                              'Normal BMI Range :',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF615E70),
                              ),
                            ),
                            Text(
                              '18.5 - 25 kg/m2',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                        child: Text(
                          'You have a normal body weight, Good Job',
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,

                        ),
                      ),
                    ],
                  ),
                  width: double.infinity,
                  color: Color(0xFF1B1C2B),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyApp();
                  }));
                },
                child: Container(
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'Re-Calculator',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


