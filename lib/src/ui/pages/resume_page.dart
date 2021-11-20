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
          text: TextSpan(
              style: const TextStyle(fontSize: 40, fontFamily: 'Helvetica'),
              text: '',
              children: [
                TextSpan(
                  text: 'name'.tr(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: UIColors.redOrange,
                  ),
                ),
                const TextSpan(text: ' '),
                TextSpan(text: 'lastname'.tr()),
              ]),
        ),
        const SizedBox(height: 20),
        Text(
          'profession'.tr(),
          style: const TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Section(
          title: 'educationAndCourses'.tr(),
          child: const EducationAndCourses(),
        ),
        const SizedBox(height: 20),
        Section(
          title: 'experienceProjects'.tr(),
          child: const ExperienceAndProjects(),
        ),
        Section(
          title: 'references'.tr(),
          child: const References(),
        ),
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
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: UIColors.redOrange),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) {
                    return IconButton(
                      icon: const Icon(Icons.close, color: UIColors.redOrange),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
                const Center(child: _LeftSide()),
              ],
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: _RightSide(),
      ),
    );
  }
}
