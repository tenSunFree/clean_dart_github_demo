import 'package:flutter/material.dart';

class HomeBackgroundWidget extends StatelessWidget {
  final Widget child;

  const HomeBackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
      ),
      child,
    ]);
  }
}
