import 'package:flutter/material.dart';
import 'package:workshop_006_responsive_layout/demo/screens/demo_home_page.dart';
import 'package:workshop_006_responsive_layout/utils/my_colors.dart'
    as my_colors;

import 'layout/aspect_ratio_layout.dart';
import 'layout/expanded_flexible_layout.dart';
import 'layout/fractionally_sized_box_layout.dart';
import 'layout/layout_builder_layout.dart';
import 'layout/media_query_layout.dart';
import 'layout/orientation_builder_layout.dart';
import 'layout/using_flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabelWidget(
                label: 'MediaQueryLayout',
                widget: MediaQueryLayout(),
              ),
              LabelWidget(
                label: 'LayoutBuilderLayout',
                widget: LayoutBuilderLayout(),
              ),
              LabelWidget(
                label: 'OrientationBuilderLayout',
                widget: OrientationBuilderLayout(),
              ),
              LabelWidget(
                label: 'ExpandedFlexibleLayout',
                widget: ExpandedFlexibleLayout(),
              ),
              LabelWidget(
                label: 'FractionallySizedBoxLayout',
                widget: FractionallySizedBoxLayout(),
              ),
              LabelWidget(
                label: 'AspectRatioLayout',
                widget: AspectRatioLayout(),
              ),
              LabelWidget(
                label: 'Demo',
                widget: DemoHomePage(),
              ),
              LabelWidget(
                label: 'Demo using Flutter Screen Util',
                widget: UsingFlutterScreenUtil(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String label;
  final Widget widget;
  final bool navigate;

  LabelWidget({
    @required this.label,
    this.widget,
    this.navigate = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RaisedButton(
            color: my_colors.darkGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              if (navigate) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => widget,
                  ),
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                label,
                style: TextStyle(
                  color: my_colors.greenAccent,
                  fontSize: 20,
                  fontFamily: 'GoogleSans',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
