import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  const RoundedIcon(
      {Key key, @required this.icon, this.color = Colors.black, this.size = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child: Container(
          padding: EdgeInsets.all(8),
          color: color,
          child: Icon(
            icon,
            color: Colors.white,
            size: size,
          ),
        ));
  }
}
