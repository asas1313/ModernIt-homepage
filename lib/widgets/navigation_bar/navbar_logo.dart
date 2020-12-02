import 'package:flutter/material.dart';
import 'package:modern_it_homepage/constants/logo.dart';
import 'package:modern_it_homepage/extensions/hover_extensions.dart';
import 'package:modern_it_homepage/routing/route_names.dart';
import 'package:modern_it_homepage/services/navigation_service.dart';

import '../../locator.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(HomeRoute);
      },
      child: Container(
        child: ClipRRect(
          child: Image.asset(
            logo_path,
            width: navbar_logo_width,
          ).showCursorOnHover,
        ),
      ),
    ));
  }
}
