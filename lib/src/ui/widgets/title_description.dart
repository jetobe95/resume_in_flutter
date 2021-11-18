import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(description,
            style: const TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 14,
            )),
        const SizedBox(height: 8),
      ],
    );
  }
}
