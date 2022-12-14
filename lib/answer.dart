import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  // final VoidCallback selectHandler; 2nd way no accepting and no returning
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText != null ? answerText : ""),
        onPressed: selectHandler,
      ),
    );
  }
}
