import "package:flutter/material.dart";
import 'package:login_ui/login_page_user.dart';
import 'package:login_ui/user_profile.dart';
import 'package:login_ui/user_task_details.dart';
//import 'package:google_fonts/google_fonts.dart';

//faint- Color.fromRGBO(57, 62, 70, 1)
//dark - Color.fromRGBO(34, 40, 49, 1)

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State createState() => _UserProfileState();
}

class _UserProfileState extends State {
  //adding a list of hardcoded task, badhme realtime se bhar denge
  final List<Map<String, String>> tasks = [
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Set drawer icon color to white
        ),
        title: Text(
          "User Home Page",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey, // appbar che curve kopre
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(34, 40, 49, 1),
            /*gradient: const LinearGradient(
                colors: [Colors.blueAccent, Colors.deepPurpleAccent]),*/
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(30), // Smooth, larger rounding at bottom
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.5),
                spreadRadius: 4,
                blurRadius: 15,
                offset: const Offset(0, 10), // Vertical shadow effect
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
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
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(34, 40, 49, 1),
              ),
              child: Text(
                'User Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("Profile"),
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
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginPageUser())); // Close the drawer
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
              child: Card(
                color: Colors.white,
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tasks[index]['title']!,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        tasks[index]['description']!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        tasks[index]['dueDate']!,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ],
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
