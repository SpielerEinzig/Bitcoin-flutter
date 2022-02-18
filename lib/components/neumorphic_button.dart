import 'package:flutter/material.dart';

Widget neumorphicButton(
    {required IconData? icon,
    required String label,
    required Function()? onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: 100,
      width: 200,
      child: Column(
        children: [
          Icon(
            icon,
            size: 80,
            //color: Colors.black,
          ),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey[900],
        boxShadow: [
          const BoxShadow(
            color: Colors.black,
            offset: Offset(5.0, 5.0),
            spreadRadius: 1.0,
            blurRadius: 15,
          ),
          BoxShadow(
            color: Colors.grey.shade800,
            offset: const Offset(-5.0, -5.0),
            spreadRadius: 1.0,
            blurRadius: 15,
          ),
        ],
      ),
    ),
  );
}
