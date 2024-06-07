import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

//add type for this object
Alignment beginAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;
//or var endAlignment = Alignment.bottonRight;
//or final endAlignment = Alignment.bottomRight;
//or const endAlignment = Alignment.bottomRight;

//Class with return type Widget
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});
//GradientContainer({key}): super(key: key) {
  //init
  //add some comment
//}

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
