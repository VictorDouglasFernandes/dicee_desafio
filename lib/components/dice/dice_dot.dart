import 'package:flutter/widgets.dart';

/// Widget of a container with a circle inside to create each dot of the DiceRow
class DiceDot extends StatelessWidget {
  const DiceDot({this.visibility});

  final bool visibility;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      maintainState: true,
      maintainAnimation: true,
      maintainSize: true,
      visible: visibility,
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 1),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
