import 'package:flutter/material.dart';

class IconGeneration extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final void Function()? onPressed;

  const IconGeneration({
    Key? key,
    required this.icon,
    this.onPressed,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: 30,
      ),
      onPressed: onPressed,
    );
  }
}
