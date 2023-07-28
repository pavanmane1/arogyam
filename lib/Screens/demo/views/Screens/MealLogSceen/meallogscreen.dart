import 'package:flutter/material.dart';

class MealLog extends StatelessWidget {
  const MealLog({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      width: 60,
                      height: 70,
                      child: Image.asset("assets/images/hello _robot.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Good Morning pavan ",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Center(
                              child: Text(
                            "Your Goal - not set ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 247, 247, 247), fontWeight: FontWeight.w500, fontSize: 10),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Enter Your Basic Information",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "What is Your Height?",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Container(
                height: 50,
                width: 330,
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Height",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "What is Your weight?",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Container(
                height: 50,
                width: 330,
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "weight",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "What is Your age?",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Container(
                height: 50,
                width: 330,
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "age",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Select your gender",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            
          ],
        )),
      ),
    );
  }
}
