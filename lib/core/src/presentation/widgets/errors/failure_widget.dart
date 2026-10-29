import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';
import '../../../../utils/constants.dart';
import '../success_error_icon_widget.dart';
import 'error_text_widget.dart';

class FailureWidget extends StatefulWidget {
  final String error;
  final int code;
  final void Function()? onRetry;
  final void Function()? onCancel;

  const FailureWidget({
    super.key,
    required this.error,
    required this.code,
    this.onRetry,
    this.onCancel,
  });

  @override
  State<FailureWidget> createState() => _FailureWidgetState();
}

class _FailureWidgetState extends State<FailureWidget> {
  @override
  Widget build(BuildContext context) {
    if (!Tr.isInitialized) return const SizedBox();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kSmallPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SuccessErrorIconWidget(isSuccess: false, iconSize: 150),
            const Gap(kMediumGap),
            ErrorTextWidget(
              error: Tr.of(context)
                  .errorCode(widget.code)
                  .capitalizeFirstLetter(),
            ),
            const Gap(kMediumGap),
            ErrorTextWidget(error: widget.error),
            const Gap(kMediumGap),
            Builder(
              builder: (context) {
                return widget.onRetry != null
                    ? FilledButton(
                        onPressed: widget.onRetry,
                        child: Text(
                          Tr.of(context).retry.capitalizeFirstLetter(),
                        ),
                      )
                    : const SizedBox();
              },
            ),
            widget.onCancel != null ? const Gap(kMediumGap) : const SizedBox(),
            const Gap(kMediumGap),
            widget.onCancel != null
                ? ElevatedButton(
                    onPressed: widget.onCancel,
                    child: Text(Tr.of(context).cancel.capitalizeFirstLetter()),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
