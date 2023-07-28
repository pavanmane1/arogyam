import 'package:flutter/material.dart';

class SearchSceen extends StatelessWidget {
  const SearchSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
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
              height: 60,
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 238, 238, 238),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            hintText: "Search",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Handle search button press
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.custom(
              scrollDirection: Axis.vertical,
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
                childCount: 10, // Replace with the number of containers you want to display
              ),
            ),
          ),
        ],
      )),
    );
  }
}
