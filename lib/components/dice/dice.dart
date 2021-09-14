import 'package:flutter/widgets.dart';
import 'package:dicee_desafio/constants.dart';
import 'package:dicee_desafio/components/dice/dice_row.dart';

/// Widget who creates a dice from 1 to 6 depending on the number given
class Dice extends StatelessWidget {
  Dice({@required this.number});

  final int number;

  /// Variable that stores the data of which dots should show
  /// This variable is used by the components
  Map<dynamic, bool> numberVisibility = {
    'one': true,
    'two': true,
    'three': true,
    'four': true,
    'five': true,
    'six': true,
    'seven': true,
    'eight': true,
    'nine': true,
  };

  /// Change the variable of the dots depending of which number is given
  void setVisibility() {
    switch (number) {
      case 1:
        numberVisibility = numberOne;
        break;
      case 2:
        numberVisibility = numberTwo;
        break;
      case 3:
        numberVisibility = numberThree;
        break;
      case 4:
        numberVisibility = numberFour;
        break;
      case 5:
        numberVisibility = numberFive;
        break;
      case 6:
        numberVisibility = numberSix;
        break;
      default:
        numberVisibility = numberOne;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    setVisibility();
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DiceRow(
            visibilityOne: numberVisibility['one'],
            visibilityTwo: numberVisibility['two'],
            visibilityThree: numberVisibility['three'],
          ),
          DiceRow(
            visibilityOne: numberVisibility['four'],
            visibilityTwo: numberVisibility['five'],
            visibilityThree: numberVisibility['six'],
          ),
          DiceRow(
            visibilityOne: numberVisibility['seven'],
            visibilityTwo: numberVisibility['eight'],
            visibilityThree: numberVisibility['nine'],
          ),
        ],
      ),
    );
  }
}
