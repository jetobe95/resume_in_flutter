import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/widgets/section.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        /// TODO: poner mi foto
        FlutterLogo(),
        Section(child: Text('')),
        Text('Acerca de mí'),
        Text('''Soy Ingeniero Electrónico de profesión.

Actualmente cuento con conocimientos y 3 años de experiencia en desarrollo de aplicaciones con React Native y Flutter. Me gusta hacer testing usando Jest, para asegurar la calidad de mi código

En mi carrera de desarrollador utilizo herramientas como Git, Vscode, Línea de comandos, Postman , Trello y Jira

Amo aprender siempre lo nuevo y tratar de aplicarlo a mi trabajo.
'''),
      ],
    );
  }
}
