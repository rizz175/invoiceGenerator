import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  var onPressed;
  var title;
  var color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
  PrimaryButton({required this.onPressed, required this.title, this.color});
}
