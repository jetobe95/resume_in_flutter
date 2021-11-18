part of resume.pages;

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return const _DesktopLayout();
        }
        return const _MobileLayout();
      },
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          _LeftSide(),
          _RightSide(),
        ],
      ),
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.grey[50]!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: const SizedBox(
          width: 192,
          child: MyInfo(),
        ),
      ),
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Modo movil'),
      ),
    );
  }
}
