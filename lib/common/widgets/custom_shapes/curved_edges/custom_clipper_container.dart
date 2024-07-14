import 'package:flutter/cupertino.dart';

import 'curved_edges.dart';

class CustomClipperContainer extends StatelessWidget {
  const CustomClipperContainer({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
