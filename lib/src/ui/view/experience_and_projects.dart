import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/widgets/title_description.dart';

class ExperienceAndProjects extends StatelessWidget {
  const ExperienceAndProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        TitleDescription(
            title: 'TECHNISUPPORT S.A.S | GOCARGO S.A.S',
            description:
                '''Noviembre 2018 - Julio 2021\nDesarrollada en React-native, Android studio, IOS(Xcode), GIT,  Redux, Sagas, Redux Thunk. Push notifications y real time database con  Firebase, Final-forms para formularios. Funcionalidad de push persistente en android Nativo'''),
        TitleDescription(
            title: 'WORKLY',
            description:
                '''Marzo 2018 - Actualidad\nDesarrollada en React native y Flutter, ReactJs para la web haciendo uso de CSS, Boostrap, Axios. GraphQL, Socket IO. Herramientas utilizadas: Firebase, Postman,Git ,Github Actions, Code Magic, Despliengue en tiendas App Store Connect y Play Console'''),
        TitleDescription(
            title: '21’s',
            description:
                '''Desarrollo en Flutter y Lottie, Desplegada en las tiendas'''),
        TitleDescription(
            title: 'DIFICULTAD PREOPERATORIO',
            description:
                '''Agosto 2020 - FREELANCE\nDesarrollo en Flutter, desplegada en las tiendas Play Store, App Store'''),
        TitleDescription(
            title: 'Proyecto de Grado',
            description:
                '''Junio 2018 - Noviembre 2018\nDesarrollo en React Js, utilizando Firestore, Cloud Functions, Hosting, Redux, Redux Persist'''),
      ],
    );
  }
}
