import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ufs_test/view/widgets/container_widget.dart';
import 'package:ufs_test/view/widgets/customerscrollview_widget.dart';
import 'package:ufs_test/view/widgets/listview_widget.dart';
import 'package:ufs_test/view/widgets/scrollableview_widget.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    final listA = [
      "assets/images/image 1.png",
      "assets/images/image 2.png",
      "assets/images/image 3.png",
      "assets/images/image 4.png"
    ];
    final listB = [
      "assets/images/img1.png",
      "assets/images/img2.png",
      "assets/images/img3.png",
      "assets/images/img4.png",
    ];

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff6e9cce),
              Color(0xffd8eaff),
              Color(0xffd8eaff),
              Color(0xffd8eaff),
            ],
          ),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leadingWidth: 75,
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: SvgPicture.asset("assets/images/ic_menu.svg"),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: SvgPicture.asset(
                        "assets/images/ic_transfer_within_a_station.svg"),
                    text: "Training",
                  ),
                  Tab(
                    icon: SvgPicture.asset("assets/images/ic_query_stats.svg"),
                    text: "Inspection",
                  ),
                  Tab(
                    icon: SvgPicture.asset("assets/images/ic_settings.svg"),
                    text: "Calibration",
                  ),
                ],
                indicatorColor: Colors.yellow,
                labelColor: const Color(0xff294C73),
              ),
              actions: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        child: Text(
                          isPressed ? "SignUp" : "SignOut",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContainerWidget(
                          color: Color(0xffC9CBFF),
                          color2: Color(0xffB7B6FF),
                          text: "Total Training \nAttended",
                          text2: "10",
                        ),
                        ContainerWidget(
                          color: Color(0xffFED3FF),
                          color2: Color(0xffFEB4F7),
                          text: "Upcoming \nTrainings",
                          text2: "5",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Explore our \nvarious ",
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff294C73),
                          ),
                          children: [
                            TextSpan(
                              text: "training",
                              style: TextStyle(
                                fontSize: 40,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = const Color(0xff294C73),
                                letterSpacing: 2,
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Featured Training",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff294C73),
                          ),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset(
                              "assets/images/ic_arrow_forward_ios.svg"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ListViewWidget(),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const Text(
                      "Accreditation",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff294C73),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ScrollableViewWidget(
                      list: listA,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "See what our customer says",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomerScrollviewWidget(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Our Clients",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff294C73),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ScrollableViewWidget(list: listB),
                    const SizedBox(
                      height: 86,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
