import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
                color: const Color.fromARGB(197, 1, 96, 133),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Start Your",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Personal Training",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Today",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "3 day free trial",
                    style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 175, 175, 175)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "Join Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    "Starting @599/month",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              "Today",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 15, bottom: 15),
            child: Container(
              height: 80,
              width: 450,
              decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Center(
                    child: Icon(
                      color: Colors.orange[900],
                      Icons.alarm,
                      size: 30,
                    ),
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(9),
                        child: Text(
                          "Upcoming Session Start in ",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38), borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          "08:00.00 PM",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                        )),
                      )
                    ],
                  ),
                  Container(
                    child: const Center(
                      child: Icon(
                        Icons.notifications_sharp,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "TRACK YOUR ACTIVITIES",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          Container(
            height: 150,
            child: ListView.custom(
              scrollDirection: Axis.horizontal,
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 10,
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 40,
                            child: const Center(
                              child: Text(
                                'Bottom Container',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 6, // Replace with the number of containers you want to display
              ),
            ),
          ),
        ],
      )),
    );
  }
}
