import 'package:flutter/widgets.dart';

import '../constants/controllers.dart';
import '../routing/Router.dart';
import '../routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);

