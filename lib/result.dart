import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF0067),
          title: Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        body: ResultBody(),
      ),
    );
  }
}

class ResultBody extends StatefulWidget {
  const ResultBody({super.key});

  @override
  State<ResultBody> createState() => _ResultBodyState();
}

class _ResultBodyState extends State<ResultBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            child: Column(

            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
