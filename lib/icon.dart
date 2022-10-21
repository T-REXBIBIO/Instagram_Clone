import 'package:flutter/material.dart';

class IconGeneration extends StatelessWidget {

  final IconData icon;
  final void Function()? onPressed;

  const IconGeneration({Key? key, required this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.black, size: 30,),
      onPressed: onPressed,
    );
  }
}

