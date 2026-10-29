import 'package:flutter/material.dart';

// Dummy enum for the web compiler
enum LogLevel { None, Verbose, Info, Debug, Warn, Error }

// Dummy config for the web compiler
class ClarityConfig {
  ClarityConfig({required String projectId, required LogLevel logLevel});
}

// Dummy widget for the web compiler
class ClarityWidget extends StatelessWidget {
  final ClarityConfig clarityConfig;
  final Widget app;

  const ClarityWidget({
    super.key,
    required this.clarityConfig,
    required this.app,
  });

  @override
  Widget build(BuildContext context) {
    return app; // Just returns your app directly on the web
  }
}
