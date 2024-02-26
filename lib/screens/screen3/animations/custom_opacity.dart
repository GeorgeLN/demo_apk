import 'package:flutter/material.dart';

class CustomOpacity extends AnimatedWidget {
  const CustomOpacity({
    super.key,
    required Animation animation,
    //required this.child,
  }) : super(listenable: animation);

  //final Widget child;

  Animation<double> get progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: progress.value,
      //child: child,
    );
  }
}