import "package:flutter/material.dart";
import "package:first_app/widgets/text_widget.dart";
import "dart:math";

final randomizer = Random();

//This widget is a stateful widget and we need to extend this class from the super class
//StatefulWidget, this is because we need state management within the component / widget
class DiceRoller extends StatefulWidget {
  DiceRoller({key}) : super(key: key);

  //this is not like stateless widget where we straight up define a build method
  //instead we create a createState() method that returns the _DiceRollerState() class
  //which is where all the statemanagement occurs and all the component definitions are.
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//here the (_) in _DiceRollerState means this class is a private class and
//here is where the state management actually happens, we change the value of
//the diceRoll variable and this is done through the setState() method
class _DiceRollerState extends State<DiceRoller> {
  String currentImage = "assets/dice-images/dice-1.png";
  var diceRoll = 1;

  void randomImage() {
    //we use the setState() method to update state and change the number of the diceRoll.
    //This method triggers the re-rendering of the app and eventually the DiceRoller class / widget
    //displaying the updated dice image
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
      currentImage = 'assets/dice-images/dice-$diceRoll.png';
    });
  }

  //here we will have a normal build function that returns a widget with the updated state
  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          currentImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            onPressed: randomImage,
            child: const TextWidget("Roll The Dice"))
      ]),
    );
  }
}
