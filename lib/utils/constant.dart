import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) => context.inheritFromWidgetOfExactType(Constants);

  const Constants({Widget child, Key key}): super(key: key, child: child);

  /// layout
  final EdgeInsets screenPadding = const EdgeInsets.all(32);
  final BorderRadius borderRadius = const BorderRadius.all(Radius.circular(5));

  /// font size
  final double smallFontSize = 14;
  final double largeFontSize = 20;
  final double extraLargeFontSize = 32;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}