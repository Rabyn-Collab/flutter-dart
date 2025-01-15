import 'package:flutter/material.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildColumn('180', 'Downloads'),
                  VerticalDivider(),
                  _buildColumn('Eng', 'languages'),
                  VerticalDivider(),
                  _buildColumn('206', 'pages'),
                ],
              ),
            ),
          )),
    );
  }

  Column _buildColumn(String count, String label) {
    return Column(
      children: [
        Text(
         count,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
