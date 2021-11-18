import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Section extends StatelessWidget {
  const Section({required this.child, Key? key}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(
                image: AssetImage(
              'assets/double_diagonal.png',
            )),
            Text(
              'Acerca de mi',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 14 * 2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Divider(
          color: Color(0xfffa302d),
        ),
        child,
      ],
    );
  }
}
