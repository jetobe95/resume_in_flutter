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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Flexible(child: _LeftSide()),
            SizedBox(width: 24),
            Expanded(child: _RightSide()),
          ],
        ),
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
      child: const SizedBox(
        width: 300,
        child: MyInfo(),
      ),
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
              style: TextStyle(fontSize: 40),
              text: '',
              children: [
                TextSpan(
                  text: 'JEFFREY ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: UIColors.redOrange,
                  ),
                ),
                TextSpan(text: 'DANIEL TORRES BELLO'),
              ]),
        ),
        const SizedBox(height: 20),
        const Text('Ingeniero Electrónico'),
        const SizedBox(height: 20),
        const Section(
          title: 'EDUCACIÓN & CURSOS',
          child: EducationAndCourses(),
        ),
        const SizedBox(height: 20),
        const Section(
          title: 'EXPERIENCIA & PROYECTOS',
          child: ExperienceAndProjects(),
        ),
        const Section(title: 'REFERENCIAS', child: References()),
      ],
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const Drawer(
        child: _LeftSide(),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: _RightSide(),
      ),
    );
  }
}
