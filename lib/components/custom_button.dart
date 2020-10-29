
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{

  CustomButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.explore,
              color: Colors.amber
            ),
            const SizedBox(width: 8.0),
            const Text("Purchase", style: TextStyle(
              color: Colors.white,

            )),

          ],
        )
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );

  }


}