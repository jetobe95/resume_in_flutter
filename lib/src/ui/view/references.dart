import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/widgets/title_description.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleDescription(
            title: 'Fabian Diartt',
            description:
                '''Ingeniero Electrónico\nTelefono: 3045929332\nEmail : fandig27@gmail.com
'''),
        SizedBox(
          width: 30,
        ),
        TitleDescription(
            title: 'Eily Mejia',
            description: '''UI/UX Lead in Lean Tech IO \nPhone: 3016832030''')
      ],
    );
  }
}
