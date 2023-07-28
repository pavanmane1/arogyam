import 'package:arogyam/Screens/demo/views/Screens/weightHistoryscreen/weighthistory.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Set Weight goal")),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10, right: 15),
                    child: Container(
                      height: 320,
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
                        children: <Widget>[
                          /* const Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              "Height",
                              style: TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ), */
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 20),
                                child: Container(
                                  width: 150,
                                  height: 50,
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 20),
                                child: Container(
                                  width: 150,
                                  height: 50,
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
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Container(
                              width: 200,
                              height: 50,
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
                                  hintText: "Targeted Weight",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                            child: Container(
                              width: 200,
                              height: 50,
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
                                  hintText: "End Date ",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(125, 129, 205, 235),
                                    ),
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: true,
                                          groupValue: false,
                                          onChanged: (value) {},
                                        ),
                                        const Text('Male'),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: const Color.fromARGB(125, 129, 205, 235),
                                        ),
                                        child: Row(
                                          children: [
                                            Radio(
                                              value: false,
                                              groupValue: true,
                                              onChanged: (value) {},
                                            ),
                                            const Text('Female'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Weighthistory(),
                          ));
                      // Handle button tap here
                    },
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
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
                          "Set Goal",
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
            )),
      ),
    );
  }
}
