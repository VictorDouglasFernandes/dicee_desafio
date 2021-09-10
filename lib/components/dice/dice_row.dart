import 'package:dicee_desafio/components/dice/dice_dot.dart';
import 'package:flutter/widgets.dart';

class DiceRow extends StatelessWidget {
  const DiceRow({
    @required this.visibilityOne,
    @required this.visibilityTwo,
    @required this.visibilityThree
  });

  final bool visibilityOne;
  final bool visibilityTwo;
  final bool visibilityThree;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DiceDot(
          visibility: visibilityOne,
        ),
        DiceDot(
          visibility: visibilityTwo,
        ),
        DiceDot(
          visibility: visibilityThree,
        ),
      ],
    );
  }
}
