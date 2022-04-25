import 'package:flutter/material.dart';

class MainButton extends RaisedButton {
  final VoidCallback onPressed;
  final Widget child;

  const MainButton({required this.onPressed, required this.child})
      : super (onPressed: onPressed, child: child);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          buttonTheme: Theme
              .of(context)
              .buttonTheme
              .copyWith(
            shape: const RoundedRectangleBorder(
                // borderRadius: BorderRadius: circular(20)),
          )
      ),),
      child:Builder(builder: super.build),);
  }
}