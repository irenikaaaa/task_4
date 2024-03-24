import 'package:flutter/material.dart';

class HomePage10 extends StatelessWidget {
  const HomePage10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
        elevation: 30,
        shape: const BeveledRectangleBorder(
            side: BorderSide(
          color: Colors.red,
          width: 4,
          style: BorderStyle.solid,
        )
            //borderRadius: BorderRadius.circular(20),
            ),
        child: const Icon(Icons.add),
        /*shape: CircleBorder(
          eccentricity: BorderSide.strokeAlignOutside,
        ),*/
        //mini: true,
      ),
    );
  }
}
