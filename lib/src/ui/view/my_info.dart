import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/view/skills.dart';
import 'package:resume_in_flutter/src/ui/widgets/section.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CircleAvatar(
          backgroundColor: Colors.red,
          foregroundImage: AssetImage('assets/me.png'),
          radius: 57,
        ),
        SizedBox(height: 32),
        Section(
          title: 'ACERCA DE MÍ',
          content: '''Soy Ingeniero Electrónico de profesión.

Actualmente cuento con conocimientos y 3 años de experiencia en desarrollo de aplicaciones con React Native y Flutter. Me gusta hacer testing usando Jest, para asegurar la calidad de mi código

En mi carrera de desarrollador utilizo herramientas como Git, Vscode, Línea de comandos, Postman , Trello y Jira

Amo aprender siempre lo nuevo y tratar de aplicarlo a mi trabajo.''',
        ),
        SizedBox(height: 32),
        Section(
          title: 'CONTACTO',
          content: '''
Celular
+57 3164321470

Correo: 
jeffreyt@uninorte.edu.co

LinkedIn
https://www.linkedin.com/in/jeffrey-torres-bello-1ab800171/
''',
        ),
        SizedBox(height: 32),
        Section(
          title: 'HABILIDADES',
          child: Skills(),
        ),
        SizedBox(height: 32),
        Section(
          title: 'PASATIEMPOS',
          child: Pasatiempos(),
        ),
      ],
    );
  }
}

class Pasatiempos extends StatelessWidget {
  const Pasatiempos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildImage(
          'assets/guitar.png',
        ),
        buildImage('assets/computer.png'),
        buildImage('assets/gym.png'),
      ],
    );
  }

  Widget buildImage(String src) => Image.asset(
        src,
        height: 30,
        width: 30,
        fit: BoxFit.contain,
      );
}
