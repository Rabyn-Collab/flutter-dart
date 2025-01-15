import 'package:flutter/material.dart';


class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black,),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)
      ),
    );
  }
}
