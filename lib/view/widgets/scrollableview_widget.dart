import 'package:flutter/material.dart';

class ScrollableViewWidget extends StatelessWidget {
  
  final List<String> list;
  const ScrollableViewWidget({super.key,required this.list});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 145,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(list[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: list.length,
      ),
    );
  }
}
