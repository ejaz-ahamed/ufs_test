import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Color color;
  final Color color2;
  final String text;
  final String text2;
  const ContainerWidget(
      {super.key,
      required this.color,
      required this.color2,
      required this.text,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 60,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: Color(0xff294C73), fontWeight: FontWeight.w600),
            ),
            CircleAvatar(
              backgroundColor: color2,
              radius: 12,
              child: Text(
                text2,
                style: const TextStyle(
                  color: Color(0xff294C73),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
