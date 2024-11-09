import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
        title: const Text(
          "DashBoard",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Overview",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(57, 62, 70, 1),
                    ),
                    height: 200,
                    width: 250,
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            "assets/revenue.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Total Revenue",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Text(
                          "5300 dollars",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                              size: 25,
                            ),
                            Text(
                              "12% increase in last month",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    width: 15,
                  ),

                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(57, 62, 70, 1),
                    ),
                    height: 200,
                    width: 250,
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            "assets/project.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Total Projects",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Text(
                          "95/100",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_downward,
                              color: Colors.red,
                              size: 25,
                            ),
                            Text(
                              "12% decrease in last month",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //
                  //
                ],
              ),
            ),
            //  const SizedBox(height: 10,),
            //  const Text("Project Summary",
            //  style: TextStyle(
            //    fontSize: 25,
            //    fontWeight: FontWeight.w500,
            //    color: Colors.white
            //  ),
            //  ),
            //  const SizedBox(height: 10,),
            //   Column(
            //   children: [
            //     Table(
            //       columnWidths: const{
            //         0: FlexColumnWidth(4), // Wider first column
            //         1: FlexColumnWidth(2),
            //         2: FlexColumnWidth(2),
            //         3:FlexColumnWidth(2)
            //       },
            //       children: const [
            //         TableRow(
            //           children: [
            //             const Text("Project Name",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Due Date",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Status",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Progress",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //           ],
            //         ),
            //         TableRow(
            //           children: [
            //             const Text("Real Estate App Design",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("21 MArch 2025",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Completed",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Progress",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //           ],
            //         ),
            //         TableRow(
            //           children: [
            //             const Text("Real Estate App Design",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("21 MArch 2025",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Completed",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Progress",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //           ],
            //         ),
            //         TableRow(
            //           children: [
            //             const Text("Real Estate App Design",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("21 MArch 2025",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Completed",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Progress",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //           ],
            //         ),
            //         TableRow(
            //           children: [
            //             const Text("Real Estate App Design",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("21 MArch 2025",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Completed",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //             const Text("Progress",
            //             style:TextStyle(
            //               color: Colors.white,
            //             ),),
            //           ],
            //         ),
            //       ],
            //     ),

            //   ],),
          ],
        ),
      ),
    );
  }
}
