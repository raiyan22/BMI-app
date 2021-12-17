import 'package:bmi_app/components/bottom_button.dart';
import 'package:bmi_app/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
            child: Text("Your Result"),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: Colors.tealAccent,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text( resultText.toUpperCase(),),
                    Text( bmiResult),
                    Text( interpretation , textAlign: TextAlign.center, ),
                  ],
              ),
            ),
          ),
          BottomButton(onTap: () {
            Navigator.pop(context);
          }, buttonTitle: "Recalculate"),
        ],
      ),
    );
  }

}
