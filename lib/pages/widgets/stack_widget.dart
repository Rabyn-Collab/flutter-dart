import 'package:flutter/material.dart';


class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 400,
          width: double.infinity,
          color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                top:100,
                left: 100,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
              Positioned(
                top: 150,
                left: 150,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://miro.medium.com/v2/resize:fit:2000/1*QDdI_M8VAIyOCTAZDjM2vA.png')),
                    borderRadius: BorderRadius.circular(20)
                  ),

                ),
              ),
              Positioned(
                top: 200,
                left: 200,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
