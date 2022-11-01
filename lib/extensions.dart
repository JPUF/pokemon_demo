import 'package:flutter/material.dart';

extension BreakpointUtils on BoxConstraints {
  bool get isDesktop => maxWidth > 900;

  bool get isMobile => !isDesktop;
}
