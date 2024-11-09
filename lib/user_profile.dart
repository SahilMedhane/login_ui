import "package:flutter/material.dart";
import "package:login_ui/login_page_user.dart";

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State createState() => _UserAccountState();
}

class _UserAccountState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(34, 40, 49, 1),
              borderRadius: BorderRadius.circular(30)),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text("User Profile",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
              child: const Icon(
                Icons.image,
                size: 50,
              ),
            ),

            //alternate way to make profile circle

            /*CircleAvatar(
              radius: 60,
              child: Icon(Icons.man),
            ),*/
            const SizedBox(height: 20),

            // User Information
            const Text(
              "Sahil Medhane",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "sahilmedhane1000@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            Text(
              "Location: India",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 20),

            // Additional Information on body....
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.teal),
              title: Text("Phone: +91 9022530193"),
            ),

            const ListTile(
              leading: Icon(Icons.password, color: Colors.teal),
              title: Text("Emp_ID: S2748D"),
            ),

            const ListTile(
              leading: Icon(Icons.work, color: Colors.teal),
              title: Text("Role: Developer"),
            ),

            const ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.teal),
              title: Text("Joining Date: Aug 2021"),
            ),

            // Logout Button
            const Spacer(), // Pushes the logout button to the bottom

            ElevatedButton(
              onPressed: () {
                // Handle logout logic here
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPageUser()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Logout",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
