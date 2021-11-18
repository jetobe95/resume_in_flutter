import 'package:flutter/material.dart';
import 'package:resume_in_flutter/src/ui/theme/uicolors.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  Widget get spacer => const SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const _SkillProgress(
        value: 1,
        title: 'Uso de terminal',
      ),
      spacer,
      const _SkillProgress(
        value: 1,
        title: 'Javascript',
      ),
      spacer,
      const _SkillProgress(
        value: 1,
        title: 'Flutter',
      ),
      spacer,
      const _SkillProgress(
        value: 1,
        title: 'React Native',
      ),
      spacer,
      const _SkillProgress(
        value: 1,
        title: 'Postman',
      ),
      spacer,
      const _SkillProgress(
        value: 1,
        title: 'Git y GitHub',
      ),
      spacer,
      const _SkillProgress(
        value: 1,
        title: 'React Hook',
      ),
    ]);
  }
}

class _SkillProgress extends StatelessWidget {
  const _SkillProgress({Key? key, required this.title, required this.value})
      : super(key: key);

  /// 0.0 - 1.0
  final double value;
  final String title;
  @override
  Widget build(BuildContext context) {
    const maxWidth = 160.0;
    const height = 10.0;
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontFamily: 'Helvetica', fontSize: 16),
        )),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: maxWidth,
          height: height,
          child: Row(
            children: [
              ColoredBox(
                color: UIColors.redOrange,
                child: SizedBox(
                  height: height,
                  width: maxWidth * value,
                ),
              ),
              ColoredBox(
                color: UIColors.alto,
                child: SizedBox(
                  height: height,
                  width: maxWidth * (1 - value),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
