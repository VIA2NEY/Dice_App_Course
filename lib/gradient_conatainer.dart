import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer( this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2
            ],
            begin: startAlignement,
            end: endAlignement
          )
        ),
        child:  Center(
          child: DiceRoller()
        ),
      )
    );
  }
}
