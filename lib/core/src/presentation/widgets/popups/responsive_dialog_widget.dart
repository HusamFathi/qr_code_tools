import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ResponsiveDialogWidget extends StatelessWidget {
  final double maxWidth;
  final double minWidth;
  final Widget child;
  final AppBar? appBar;
  const ResponsiveDialogWidget({
    super.key,
    required this.maxWidth,
    required this.minWidth,
    required this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Dialog(
        insetPadding: MediaQuery.sizeOf(context).width < maxWidth
            ? const EdgeInsets.all(0)
            : null,
        // shape: MediaQuery.sizeOf(context).width < maxWidth
        //     ? const RoundedRectangleBorder(borderRadius: BorderRadius.zero)
        //     : null,
        child: Container(
          padding: EdgeInsets.all(kSmallPadding),
          constraints: BoxConstraints(
            maxWidth: maxWidth,
            minWidth: minWidth,
            minHeight: MediaQuery.sizeOf(context).width < maxWidth
                ? double.infinity
                : 0,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: child,
            appBar: appBar,
          ),
        ),
      ),
    );
  }
}
