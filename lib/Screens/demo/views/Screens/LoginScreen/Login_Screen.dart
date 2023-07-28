import 'package:arogyam/Screens/demo/views/Screens/ArogyamHomeScreen/homescreen.dart';
import 'package:arogyam/Screens/demo/views/Screens/RegisterSreen/registrationscreen.dart';
import 'package:flutter/material.dart';

class LoginScreern extends StatelessWidget {
  const LoginScreern({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color.fromARGB(235, 230, 81, 0),
                Color.fromARGB(160, 239, 108, 0),
                Color.fromARGB(255, 255, 167, 38)
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const AnimatedOpacity(
                opacity: 1.0,
                duration: Duration(milliseconds: 500),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(255, 148, 148, 148),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 20, offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
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
                                        hintText: "Email or Phone umber",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
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
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
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
                                      Color.fromARGB(255, 255, 167, 38),
                                      Color.fromARGB(255, 239, 108, 0),
                                      Color.fromARGB(255, 230, 81, 0),
                                    ],
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 1, offset: Offset(0, 2)),
                                  ]
                                  /*  boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 20, offset: Offset(0, 10)),
                                ], */
                                  ),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegistrationScreen(),
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
                                      Color.fromARGB(255, 255, 167, 38),
                                      Color.fromARGB(255, 239, 108, 0),
                                      Color.fromARGB(255, 230, 81, 0),
                                    ],
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 1, offset: Offset(0, 2)),
                                  ]
                                  /*   boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 20, offset: Offset(0, 10)),
                                ], */
                                  ),
                              child: const Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "continue with social media",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                    height: 50,
                                    decoration:
                                        BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.blue),
                                    child: const Center(
                                      child: Text(
                                        "google",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                    height: 50,
                                    decoration:
                                        BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black),
                                    child: const Center(
                                      child: Text(
                                        "email",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
