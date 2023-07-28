import 'package:flutter/material.dart';

class BodysizeLog extends StatelessWidget {
  BodysizeLog({super.key});

  final List<Map<String, String>> fieldList = [
    {
      'label': 'What is Your Height?',
      'hintText': 'Height',
    },
    {
      'label': 'What is Your weight?',
      'hintText': 'weight',
    },
    {
      'label': 'What is Your age?',
      'hintText': 'age',
    },
    {
      'label': 'What is Your Chest Size?',
      'hintText': 'chest size',
    },
    {
      'label': 'What is Your Chest Size with bluge?',
      'hintText': 'chest size with bluge',
    },
    {
      'label': 'What is Your Arms?',
      'hintText': 'Arms',
    },
    {
      'label': 'What is Your biceps?',
      'hintText': 'biceps',
    },
    {
      'label': 'What is Your leg?',
      'hintText': 'Leg',
    },
    {
      'label': 'What is Your stomach?',
      'hintText': 'stomach',
    },
    {
      'label': 'What is Your calf?',
      'hintText': 'calf',
    },
    // Add more fields as needed
  ];
  @override
  Widget build(BuildContext context) {
    print("widget is build");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: SingleChildScrollView(
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
              for (var field in fieldList)
                FieldRow(
                  label: field['label']!,
                  hintText: field['hintText']!,
                ),
              GestureDetector(
                onTap: () {
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
                  ),
                  child: const Center(
                    child: Text(
                      "SAVE",
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

class FieldRow extends StatelessWidget {
  const FieldRow({
    Key? key,
    required this.label,
    required this.hintText,
  }) : super(key: key);

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text(
            label,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 11),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Container(
            height: 50,
            width: 330,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 238, 238, 238),
                ),
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
