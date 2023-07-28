import 'package:arogyam/Screens/demo/views/Screens/weightHistoryscreen/bmistateus.dart';
import 'package:flutter/material.dart';

class Weighthistory extends StatelessWidget {
  const Weighthistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("weight history")),
        body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      "Set Goal",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Container(
                          width: 200,
                          height: 45,
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
                              hintText: "Weight",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BMIStatusWidget(
                                        bmi: 19,
                                      )));
                          // Handle button tap here
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              colors: [
                                Color.fromARGB(255, 230, 81, 0),
                                Color.fromARGB(255, 239, 108, 0),
                                Color.fromARGB(255, 255, 167, 38)
                              ],
                            ),

                            /*  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 20, offset: Offset(0, 10)),
                                  ], */
                          ),
                          child: const Center(
                            child: Text(
                              "UPDATE",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10, right: 15),
                    child: Container(
                      height: 100,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "BMI",
                              style: TextStyle(
                                color: Color.fromARGB(199, 0, 0, 0),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10, right: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 5,
                                  width: 250, // Adjust the width as needed
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 10,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: GradientProgressIndicator(
                                    isLeftAligned: false,
                                    value: 0.7,
                                    gradientColors: const [
                                      Colors.blue,
                                      Colors.yellow,
                                      Colors.green,
                                      Colors.orange,
                                      Colors.red,
                                    ],
                                    arrowIconData: Icons.arrow_drop_up,
                                    arrowColor: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
