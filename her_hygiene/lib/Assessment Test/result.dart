import 'package:flutter/material.dart';
import 'size_configs.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 10) {
      resultText = 'These ups and downs are considered normal.';
    } else if (resultScore <= 16) {
      resultText = 'Mild mood disturbance.';
    } else if (resultScore <= 20) {
      resultText = 'Borderline clinical depression.';
    } else if (resultScore <= 30) {
      resultText = 'Moderate depression. Please contact the psychologist.';
    } else if (resultScore <= 40) {
      resultText = 'Severe depression. Please contact the psychologist.';
    } else {
      resultText = 'Extreme depression. Please contact the hospital.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(330),
            ),
            Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(100),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'home_screen');
              },
              child: Container(
                height: getProportionateScreenHeight(60),
                width: getProportionateScreenWidth(360),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(218, 84, 51, 228),
                  shape: BoxShape.rectangle,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 4),
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
