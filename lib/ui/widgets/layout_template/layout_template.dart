import 'package:flutter/material.dart';
import 'package:modern_it_homepage/locator.dart';
import 'package:modern_it_homepage/services/navigation_service.dart';
import 'package:modern_it_homepage/services/routing/route_names.dart';
import 'package:modern_it_homepage/services/routing/routs.dart';
import 'package:modern_it_homepage/ui/styles/logo.dart';
import 'package:modern_it_homepage/ui/widgets/footer/footer.dart';
import 'package:modern_it_homepage/ui/widgets/layout_template/centered_view.dart';
import 'package:modern_it_homepage/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:modern_it_homepage/ui/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
            drawer:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? NavigationDrawer()
                    : null,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(background_img_path),
                  fit: BoxFit.cover,
                ),
              ),
              child: CenteredView(
                child: Column(
                  children: [
                    CustomNavigationBar(),
                    Expanded(
                      child: Navigator(
                        key: locator<NavigationService>().navigatorKey,
                        onGenerateRoute: generateRoute,
                        initialRoute: HomeRoute,
                      ),
                    ),
                    Footer(),
                  ],
                ),
              ),
            )));
  }
}
