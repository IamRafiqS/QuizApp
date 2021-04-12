import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore ;
  final Function resetHandler;

  result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it';
    if(resultScore <=8){
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12){
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad! ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          //textColor: Colors.blue,
          TextButton(child: Text('Restart Quiz!', style: TextStyle(color: Colors.blue),), onPressed: resetHandler,),
        ], // <widget>[]
      ), // column
    ); //center
  }
}