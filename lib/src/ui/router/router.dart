import 'package:auto_route/auto_route.dart';
import 'package:resume_in_flutter/src/ui/pages/pages.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: ResumePage, initial: true),
  ],
)
class $AppRouter {}
