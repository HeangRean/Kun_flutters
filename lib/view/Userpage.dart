import 'package:flutter/material.dart';
import 'auth/login_screen.dart';
import 'Homepages.dart'; // Update with your correct imports

class Userpage extends StatefulWidget {
  const Userpage({Key? key}) : super(key: key);

  @override
  State<Userpage> createState() => _Homepages1State();
}

class _Homepages1State extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4A517).withOpacity(0.9),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person, color: Colors.white70),
          )
        ],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/logo2.png'),
              radius: 25,
            ),
            SizedBox(width: 10),
            Text(
              'កម្មវិធីការងារ',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFF4A517),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/Icons/admin.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'admin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'admin@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Login'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    'ថ្ងៃអាទិត្យ ១៤ រោច ខែជេស្ព ឆ្នាំរោង ពុទ្ធសករាជ ២៥៦៨ ថ្ងៃទី២៤ ខែមិថុនា ឆ្នាំ២០២៤',
                    style: TextStyle(fontFamily: "Schyler", fontSize: 10),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade200,
                    border: Border.all(
                      color: Colors.blue.shade400,
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '០៨:៣០ ព្រឹក',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ឈ្មោះ សង វាសនា  ស្ដីពី៖ ការកំណត់សមាសភាពក្រុមប្រឹកក្សាភិបាលសិក្សា ទីផ្សារ និងផ្សាយទេសចរណ៍កម្ពុជា(ភ្នំពេញ)',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'បន្ទប់លេខ៖ B1 ៥០៣',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ឯកសារពាក់ព័ន្ធ',
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'បានប្រជុំរួចរាល់',
                                        style: TextStyle(color: Colors.green.shade800),
                                      ),
                                      Icon(Icons.check_circle_outline,
                                          size: 18, color: Colors.green.shade800),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'ពុំទាន់បានប្រជុំ',
                                        style: TextStyle(color: Colors.red.shade500),
                                      ),
                                      Icon(Icons.circle_outlined,
                                          size: 18, color: Colors.red.shade500),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade200,
                    border: Border.all(
                      color: Colors.blue.shade400,
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '០៨:៣០ ព្រឹក',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ឈ្មោះ សង វាសនា  ស្ដីពី៖ ការកំណត់សមាសភាពក្រុមប្រឹកក្សាភិបាលសិក្សា ទីផ្សារ និងផ្សាយទេសចរណ៍កម្ពុជា(ភ្នំពេញ)',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'បន្ទប់លេខ៖ B1 ៥០៣',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ឯកសារពាក់ព័ន្ធ',
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'បានប្រជុំរួចរាល់',
                                        style: TextStyle(color: Colors.red.shade500),
                                      ),
                                      Icon(Icons.circle_outlined,
                                          size: 18, color: Colors.red.shade500),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'ពុំទាន់បានប្រជុំ',
                                        style: TextStyle(color: Colors.green.shade800),
                                      ),
                                      Icon(Icons.check_circle_outline,
                                          size: 18, color: Colors.green.shade800),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade200,
                    border: Border.all(
                      color: Colors.blue.shade400,
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '០៨:៣០ ព្រឹក',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ឈ្មោះ សង វាសនា  ស្ដីពី៖ ការកំណត់សមាសភាពក្រុមប្រឹកក្សាភិបាលសិក្សា ទីផ្សារ និងផ្សាយទេសចរណ៍កម្ពុជា(ភ្នំពេញ)',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'បន្ទប់លេខ៖ B1 ៥០៣',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ឯកសារពាក់ព័ន្ធ',
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'បានប្រជុំរួចរាល់',
                                        style: TextStyle(color: Colors.green.shade800),
                                      ),
                                      Icon(Icons.check_circle_outline,
                                          size: 18, color: Colors.green.shade800),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'ពុំទាន់បានប្រជុំ',
                                        style: TextStyle(color: Colors.red.shade500),
                                      ),
                                      Icon(Icons.circle_outlined,
                                          size: 18, color: Colors.red.shade500),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade200,
                    border: Border.all(
                      color: Colors.blue.shade400,
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '០៨:៣០ ព្រឹក',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ឈ្មោះ សង វាសនា  ស្ដីពី៖ ការកំណត់សមាសភាពក្រុមប្រឹកក្សាភិបាលសិក្សា ទីផ្សារ និងផ្សាយទេសចរណ៍កម្ពុជា(ភ្នំពេញ)',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'បន្ទប់លេខ៖ B1 ៥០៣',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ឯកសារពាក់ព័ន្ធ',
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'បានប្រជុំរួចរាល់',
                                        style: TextStyle(color: Colors.red.shade500),
                                      ),
                                      Icon(Icons.circle_outlined,
                                          size: 18, color: Colors.red.shade500),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'ពុំទាន់បានប្រជុំ',
                                        style: TextStyle(color: Colors.green.shade800),
                                      ),
                                      Icon(Icons.check_circle_outline,
                                          size: 18, color: Colors.green.shade800),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade200,
                    border: Border.all(
                      color: Colors.blue.shade400,
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '០៨:៣០ ព្រឹក',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'ឈ្មោះ សង វាសនា  ស្ដីពី៖ ការកំណត់សមាសភាពក្រុមប្រឹកក្សាភិបាលសិក្សា ទីផ្សារ និងផ្សាយទេសចរណ៍កម្ពុជា(ភ្នំពេញ)',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xff0094FF),
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'បន្ទប់លេខ៖ B1 ៥០៣',
                                    style: TextStyle(fontFamily: "Schyler", fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ឯកសារពាក់ព័ន្ធ',
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'បានប្រជុំរួចរាល់',
                                        style: TextStyle(color: Colors.green.shade800),
                                      ),
                                      Icon(Icons.check_circle_outline,
                                          size: 18, color: Colors.green.shade800),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'ពុំទាន់បានប្រជុំ',
                                        style: TextStyle(color: Colors.red.shade500),
                                      ),
                                      Icon(Icons.circle_outlined,
                                          size: 18, color: Colors.red.shade500),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF4A517).withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 30, color: Colors.white70),
              onPressed: () {
                // Implement onPressed action
              },
            ),
            IconButton(
              icon: const Icon(Icons.feed, size: 30, color: Colors.white70),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepages()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications, size: 30, color: Colors.white70),
              onPressed: () {
                // Implement onPressed action
              },
            ),
            IconButton(
              icon: const Icon(Icons.person, size: 30, color: Colors.white70),
              onPressed: () {
                // Implement onPressed action
              },
            ),
          ],
        ),
      ),
    );
  }
}