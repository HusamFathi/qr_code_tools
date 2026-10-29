import 'dart:math';

import 'package:flutter/material.dart';

import '../locale/app_localizations_helper.dart';

String getFileSize({
  required int bytes,
  required BuildContext context,
  int decimals = 2,
}) {
  if (bytes <= 0) return "0 ${Tr.of(context).byte}";
  List<String> suffixes = [
    Tr.of(context).byte,
    Tr.of(context).kilobyte,
    Tr.of(context).megabyte,
    Tr.of(context).gigabyte,
    Tr.of(context).terabyte,
    Tr.of(context).petabyte,
    Tr.of(context).exabyte,
    Tr.of(context).zettabyte,
    Tr.of(context).yottabyte,
  ];
  var i = (log(bytes) / log(1024)).floor();
  return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
}
