import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/view/skills.dart';
import 'package:resume_in_flutter/src/ui/widgets/section.dart';
import 'package:easy_localization/easy_localization.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.red,
          foregroundImage: AssetImage('assets/me.png'),
          radius: 57,
        ),
        const SizedBox(height: 32),
        Section(
          title: 'myInfo.aboutMe'.tr(),
          content: 'myInfo.aboutMeContent'.tr(),
        ),
        const SizedBox(height: 32),
        Section(
          title: 'contact.title'.tr(),
          content: 'contact.content'.tr(),
        ),
        const SizedBox(height: 32),
        Section(
          title: 'skills.title'.tr(),
          child: const Skills(),
        ),
        const SizedBox(height: 32),
        Section(
          title: 'hobbies'.tr(),
          child: const Pasatiempos(),
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
