import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/responsive_dash_board.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ResponsiveDashBoard(),
    ),
  );
}
