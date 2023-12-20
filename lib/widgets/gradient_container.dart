import "package:flutter/material.dart";
import "package:first_app/widgets/dice_roller.dart";

///the dice image will not change because the GradientContainer class is
///extends a stateless widget we need to use the Stateful Widget class if we
///want our app to handle some state and
class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {key}) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: DiceRoller());
  }
}
