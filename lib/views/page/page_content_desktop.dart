import 'package:flutter/material.dart';
import 'package:modern_it_homepage/widgets/call_to_action/call_to_action.dart';
import 'package:modern_it_homepage/widgets/page_details/page_details.dart';

class PageContentDesktop extends StatelessWidget {
  final String caption;
  final String details;
  const PageContentDesktop(this.caption, this.details);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PageDetails(
          caption: caption,
          details: details,
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: CallToAction(),
          ),
        )
      ],
    );
  }
}
