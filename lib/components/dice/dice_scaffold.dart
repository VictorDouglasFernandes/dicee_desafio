import 'package:dicee_desafio/components/dice/dice.dart';
import 'package:flutter/widgets.dart';

class DiceScaffold extends StatelessWidget {
  const DiceScaffold({
    @required this.number,
  });

  final int number;

  double getDiceSize(BuildContext context) {
    if(MediaQuery.of(context).size.width < MediaQuery.of(context).size.height){
      return (MediaQuery.of(context).size.width / 2)-16;
    } else {
      return (MediaQuery.of(context).size.height / 2)-16;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDiceSize(context),
      width: getDiceSize(context),
      decoration: BoxDecoration(
        border: Border.all(width: 6.0, color: const Color(0xFF000000)),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Dice(
          number: number,
        ),
      ),
    );
  }
}
