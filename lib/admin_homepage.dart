import 'package:flutter/material.dart';
import 'package:login_ui/admin_about.dart';
import 'package:login_ui/admin_dashboard.dart';
import 'package:login_ui/admin_feedback_page.dart';
import 'package:login_ui/admin_schedule.dart';
import 'package:login_ui/login_page_admin.dart';
import 'package:login_ui/project_data_filling.dart';
import 'package:login_ui/user_profile.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State createState() => _AdminHomepageState();
}

class _AdminHomepageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold background color
      backgroundColor: Colors.white,
      appBar: AppBar(
        //flexibleSpace: decorat,
        backgroundColor: const Color.fromARGB(255, 155, 123, 206),
        title: const Text(
          "Hello Alex!!",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
        //menu icon and on click opendrawer
        leading: Builder(
          builder: (context) {
            return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          },
        ),
      ),
      //Drawer
      drawer: Drawer(
        width: 300,
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  //profile icon
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(57, 62, 70, 1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  //name
                  const Text(
                    "Hii Alex!!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //dashboard
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AdminDashboard();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(57, 62, 70, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "DashBoard",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //about
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AdminAbout();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(57, 62, 70, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "About",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //Feedback
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AdminFeedbackPage();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(57, 62, 70, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "FeedBack",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //Logout
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPageAdmin()),
                  );
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(57, 62, 70, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //a row for icons like facebook insta (optional)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //facebbok
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(57, 62, 70, 1),
                    ),
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  //call
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(57, 62, 70, 1),
                    ),
                    child: const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                  ),
                  //chat
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(57, 62, 70, 1),
                    ),
                    child: const Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          //text completed projects and row containing see all
          const Row(
            children: [
              Text(
                "Completed Projects",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          //listview for horizontal containers
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 168, 141, 213),
                      ),
                      height: 200,
                      width: 200,
                      //column containig each texts
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Real Estate App Design",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const Spacer(),
                          const Text(
                            "Team Members",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const Spacer(),
                          //listview for small circles of team members
                          SizedBox(
                            height: 20,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Row(children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        shape: BoxShape.circle),
                                  ),
                                ]);
                              },
                            ),
                          ),
                          const Spacer(),
                          //row containing completed and 100%
                          const Row(
                            children: [
                              Text(
                                "Completed",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                "100%",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //progess indicator
                          const LinearProgressIndicator(
                            value: 0.7,
                            color: Colors.deepPurple,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //text Ongoing projects and container with see all
          Container(
            alignment: Alignment.topLeft,
            child: const Row(
              children: [
                Text(
                  "Ongoing Projects",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Spacer(),
                Text("See all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //expanded for remaining screen for vertical containers
          Expanded(
            //listview for vertical containers
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(children: [
                  Container(
                    height: 170,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 168, 141, 213),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      //row containing 2 columns
                      child: Row(
                        children: [
                          //1st column contains all 3 texts
                          //and listview of small circles of members
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Real Estate App Design",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              const Text(
                                "Team Members",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              //listview for small member circles
                              SizedBox(
                                height: 20,
                                width: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: const BoxDecoration(
                                              color: Colors.deepPurple,
                                              shape: BoxShape.circle),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "Due on: 21 March",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Spacer(),
                          //2nd column containing the progress bar/container
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // CircularProgressIndicator(
                              //   value: 1,
                              //   color: Colors.white,
                              //   semanticsLabel: "50",
                              //   semanticsValue: ,
                              // )

                              Container(
                                alignment: Alignment.center,
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Text(
                                  "Progress",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ]);
              },
            ),
          ),
        ]),
      ),
      //bottomnavigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        //onTap:(value) => ,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              //onTap:***********************************
              child: Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProjectDataFilling()),
                );
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 35,
              ),
            ),
            label: 'Add',
          ),

          //schedule in navbar

          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminSchedule()),
                );
              },
              child: Icon(
                Icons.schedule,
                color: Colors.black,
                size: 35,
              ),
            ),
            label: 'Schedule',
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.description,
          //   color: Colors.white,
          //   size: 30,
          // ),
          // label: 'Project',
          // ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                );
              },
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
