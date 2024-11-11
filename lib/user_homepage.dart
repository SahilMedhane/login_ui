import "package:flutter/material.dart";
import 'package:login_ui/login_page_user.dart';
import 'package:login_ui/user_profile.dart';
import 'package:login_ui/user_task_details.dart';
//import 'package:google_fonts/google_fonts.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State createState() => _UserProfileState();
}

class _UserProfileState extends State {
  ///adding a list of hardcoded task, badhme realtime se bhar denge
  final List tasks = [
    {
      "title": 'Task 1',
      'description': 'Complete the project documentation.',
      'dueDate': 'Due: Oct 30, 2024',
    },
    {
      'title': 'Task 2',
      'description': 'Submit the code review.',
      'dueDate': 'Due: Nov 02, 2024',
    },
    {
      'title': 'Task 3',
      'description': 'Prepare for the presentation.',
      'dueDate': 'Due: Nov 10, 2024',
    },
    // Add more tasks here
  ];
  //end of the list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // Set drawer icon color to white
        ),
        title: const Text(
          "User Home Page",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // appbar che curve kopre
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30), // Smooth, larger rounding at bottom
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                // handle press for the notification button
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(130, 112, 114, 235),
                    const Color.fromARGB(123, 155, 39, 176),
                    const Color.fromARGB(127, 155, 39, 176),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text(
                'User Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.account_box,
                color: Colors.black,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                );
              },
            ),
            /*ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),*/
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const LoginPageUser())); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Handle card tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserTaskDetails()),
                );
              },
              child: Container(
                child: Card(
                  //color: Colors.red,
                  elevation: 2,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),

                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(130, 112, 114, 235),
                          Color.fromARGB(123, 155, 39, 176),
                          Color.fromARGB(127, 155, 39, 176),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tasks[index]['title']!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            tasks[index]['description']!,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            tasks[index]['dueDate']!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
