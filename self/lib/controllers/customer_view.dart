import 'package:flutter/material.dart';

import '../views/bottom_navigation_screen.dart';

class Member {
  final String name;
  final String date;
  final String position;
  final String dob;
  final String imagePath;

  Member({
    required this.name,
    required this.date,
    required this.position,
    required this.dob,
    required this.imagePath,
  });
}

class GroupHeaderWidget extends StatelessWidget {
  final String imagePath;

  GroupHeaderWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Group No: 1'),
      subtitle: Text('Group Name: WERU GROUP'),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}

class CustomerView extends StatelessWidget {
  final List<Member> members = [
    Member(
      name: 'Group Header',
      date: '',
      position: '',
      dob: '',
      imagePath: 'assets/5.jpg', // Replace with the correct path
    ),
    Member(
      name: 'Sharifa Amani Kibakuili',
      date: '01/06/2022',
      position: 'Chair person',
      dob: '12/08/1989',
      imagePath: 'assets/3.jpeg',
    ),
    Member(
      name: 'Rafiki Jacob kiduna',
      date: '01/06/2022',
      position: 'Secretary',
      dob: '02/05/1984',
      imagePath: 'assets/7.jpeg',
    ),
    Member(
      name: 'Imani ndaiya Tebigana',
      date: '01/06/2022',
      position: 'Member',
      dob: '13/01/1991',
      imagePath: 'assets/9.jpeg',
    ),
    Member(
      name: 'Hatiya Metame Amani',
      date: '01/06/2022',
      position: 'Member',
      dob: '09/06/1990',
      imagePath: 'assets/6.jpeg',
    ),
    Member(
      name: 'Veronica Joan Kayanda',
      date: '01/06/2022',
      position: 'Member',
      dob: '24/11/1991',
      imagePath: 'assets/1.jpeg',
    ),
    // Member(
    //   name: 'Member 6',
    //   date: 'Joining Date 6',
    //   position: 'Position 6',
    //   dob: 'DOB 6',
    //   imagePath: 'assets/member6.jpg',*HAPA IVI TUWEKE FOOTER*
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3, // Set the number of tabs according to your design
        child: Scaffold(
          appBar: AppBar(
            title: Text('GROUP LOAN'),
          ),
          body: Stack(
            children: [
              ListView.builder(
                itemCount: members.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        if (index == 0)
                          GroupHeaderWidget(
                              imagePath: members[index].imagePath),
                        if (index > 0) // Skip the first card for group details
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name: ${members[index].name}'),
                                Text('Date: ${members[index].date}'),
                                Text('Position: ${members[index].position}'),
                                Text('DOB: ${members[index].dob}'),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle button click
                                    // You can navigate to a new screen or show details here
                                  },
                                  child: Text('Details'),
                                ),
                              ],
                            ),
                            trailing: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage(members[index].imagePath),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
              // Overlay BottomNavigationScreen on top
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: BottomNavigationScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(CustomerView());
}
