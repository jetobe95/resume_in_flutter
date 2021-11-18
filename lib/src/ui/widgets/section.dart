import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:resume_in_flutter/src/ui/theme/uicolors.dart';

class Section extends StatelessWidget {
  const Section({
    required this.title,
    this.child,
    this.content,
    Key? key,
  }) : super(key: key);
  final String title;
  final String? content;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Image(
                image: AssetImage(
              'assets/double_diagonal.png',
            )),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 14 * 2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Divider(
          color: UIColors.redOrange,
        ),
        if (content != null)
          SelectableText(
            content!,
            style: const TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 16,
            ),
          ),
        if (child != null) child!,
      ],
    );
  }
}
