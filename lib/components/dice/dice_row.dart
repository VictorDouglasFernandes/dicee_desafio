import 'package:dicee_desafio/components/dice/dice_dot.dart';
import 'package:flutter/widgets.dart';

/// Widget of a Row with 3 dots to create the dice
class DiceRow extends StatelessWidget {
  const DiceRow(
      {@required this.visibilityOne,
      @required this.visibilityTwo,
      @required this.visibilityThree});

  /// Visibility for each dot of the Row
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
