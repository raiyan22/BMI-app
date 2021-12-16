import 'dart:ffi';

import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton( { @required this.onTap, @required this.buttonTitle } );

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            // style: ,
          ),
        ),
        color: Colors.deepOrange,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 50,
      ),
    );
  }
}