import 'package:arogyam/Screens/demo/views/Screens/BodySizeLogScreen/bodysizelogscreen.dart';
import 'package:arogyam/Screens/demo/views/Screens/MealLogSceen/meallogscreen.dart';
import 'package:arogyam/Screens/demo/views/Screens/SetRemindersScreen/setreminderscreen.dart';
import 'package:flutter/material.dart';

class Homeadd extends StatefulWidget {
  const Homeadd({Key? key}) : super(key: key);

  @override
  State<Homeadd> createState() => _HomeaddState();
}

class _HomeaddState extends State<Homeadd> {
  var titles = ["Log A Meal", "Log A Body Sizes", "Set Your Reminder"];
  var imagespath = ["assets/images/meal.png", "assets/images/body.png", "assets/images/reminder.png"];
  var subtitles = [
    "Complete Youre Meal & Track Your Calories ",
    "Complete Youre Body Sizes ",
    "Meal reminder ,Workout reminder ,Water reinder, weight reminder ,"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Weight History"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding: const EdgeInsets.all(10),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        leading: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(imagespath[index]),
                        ),
                        title: Text(
                          titles[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        subtitle: Text(
                          subtitles[index],
                          style: const TextStyle(
                            color: Color.fromARGB(185, 0, 0, 0),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MealLog(),
                                ));
                          } else if (index == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BodysizeLog(),
                                ));
                          } else if (index == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SetReminder(),
                                ));
                          }
                          // Add your onTap logic here
                        },
                      );
                    },
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
