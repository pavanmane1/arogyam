import 'package:arogyam/Screens/demo/views/Screens/VerificationScreen/verification.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                Color.fromARGB(255, 230, 81, 0),
                Color.fromARGB(255, 239, 108, 0),
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
                        "Registration",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          shadows: [
                            Shadow(
                              color: Color.fromRGBO(0, 0, 0, 0.534),
                              blurRadius: 6,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Welcome To AROGYAM",
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
                                        hintText: "First  Name",
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
                                        hintText: "Last Name",
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
                                        hintText: "Email",
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
                                        hintText: " Phone number",
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
                                        hintText: "Confirm  Password",
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
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const VerificationScreen(),
                                  ));
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
                                boxShadow: const [
                                  BoxShadow(color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 1, offset: Offset(0, 2)),
                                ],
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
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              margin: const EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    colors: [
                                      Color.fromARGB(235, 230, 81, 0),
                                      Color.fromARGB(160, 239, 108, 0),
                                      Color.fromARGB(255, 255, 167, 38)
                                    ],
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, 3), blurRadius: 1, offset: Offset(0, 2)),
                                  ]),
                              child: const Center(
                                child: Text(
                                  "Back",
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
                            "Already have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Login",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 35, 35), fontSize: 20, fontWeight: FontWeight.w700),
                          ),
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
