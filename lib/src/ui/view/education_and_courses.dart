import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/widgets/title_description.dart';

class EducationAndCourses extends StatelessWidget {
  const EducationAndCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleDescription(
          title: 'UNIVERSIDAD DEL NORTE',
          description: '2014 - 2018\nIngeniería Electrónica',
        ),
        TitleDescription(
          title: 'PLATZI',
          description: '''Fundamentos Js(2019)
Curso introducción a React Native (2019).
Curso de Android con Kotlin.(2020)
Git y Github (2019), 
Curso de Expresiones Regulares''',
        ),
        TitleDescription(
          title: 'COURSERA | University of Alberta',
          description: 'Design Patterns | 20 September 2020',
        ),
        TitleDescription(
          title: 'ED TEAM',
          description: 'CSS, html, Pug. (2020)',
        ),
        TitleDescription(
          title: 'UDEMY',
          description:
              '''Flutter basic with Fernando Herrera (Abril 2020)\nFlutter advanced Dr. Angela Yu (Mayo 2020)\nCurso de ReactiveX  (Abril 2021)\nVscode Fernando Herrera(Abril 2021)''',
        ),
      ],
    );
  }
}
