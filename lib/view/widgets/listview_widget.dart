import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: MediaQuery.sizeOf(context).width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                width: 250,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/2.png"),
                        fit: BoxFit.cover)),
              ),
              const Positioned(
                left: 16,
                top: 16,
                child: Text(
                  "Zipline Training",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 16,
                right: 16,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 46,
                child: Text(
                  "Experience the ultimate thrill\nwith our Zipline Training\nprogram",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  left: 8,
                  bottom: 16,
                  child: Container(
                    width: 250,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffE5AA17),
                          ),
                          child: const Text(
                            "Take a look",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Container(
                width: 250,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/2.png"),
                        fit: BoxFit.cover)),
              ),
              const Positioned(
                left: 16,
                top: 16,
                child: Text(
                  "Zipline Training",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 16,
                right: 16,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 46,
                child: Text(
                  "Experience the ultimate thrill\nwith our Zipline Training\nprogram",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  left: 8,
                  bottom: 16,
                  child: Container(
                    width: 250,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffE5AA17),
                          ),
                          child: const Text(
                            "Take a look",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
