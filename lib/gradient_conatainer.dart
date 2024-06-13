import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';


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
        child: const Center(
          child:  StyledText('Salut tout le monde')
        ),
      )
    );
  }
}
