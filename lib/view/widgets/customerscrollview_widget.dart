import 'package:flutter/material.dart';

class CustomerScrollviewWidget extends StatelessWidget {
  const CustomerScrollviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 300,
            height: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 1)),
            child: Row(
              children: [
                SizedBox(
                  width: 68,
                  height: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 45,
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.asset(
                        "assets/images/inverted.png",
                        width: 60,
                        height: 60,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/na.png"),
                      const SizedBox(
                        height: 8,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 40,
                            color: const Color(0xff294C73),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jerin Thomas",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "CEO & CO-FOUNDER OF ARABTEC",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: 300,
            height: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 1)),
            child: Row(
              children: [
                SizedBox(
                  width: 68,
                  height: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 45,
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.asset(
                        "assets/images/inverted.png",
                        width: 60,
                        height: 60,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/na.png"),
                      const SizedBox(
                        height: 8,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 40,
                            color: const Color(0xff294C73),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jerin Thomas",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "CEO & CO-FOUNDER OF ARABTEC",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
