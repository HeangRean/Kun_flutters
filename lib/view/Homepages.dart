import 'package:flutter/material.dart';
import 'News.dart';
import 'auth/login_screen.dart';

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  _HomepagesState createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    NewsPage(), // Ensure you have this page created
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4A517).withOpacity(0.9),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_active,
              color: Colors.white70,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              color: Colors.white70,
            ),
          ),
        ],
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/logo2.png'),
                  radius: 25, // Adjust the radius as needed
                ),
              ),
              const SizedBox(width: 50),
              Container(
                child: Expanded(
                  child: Text('ទំព័រដើម',
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
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
                    backgroundImage: AssetImage(
                      'assets/Icons/admin.png',
                    ), // Update with your image path
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
                    builder: (context) => LoginScreen(), // Replace SignIn() with your actual sign-in screen widget
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            height: 230,
                            width: constraints.maxWidth * 0.97, // Responsive width
                            child: Image.asset(
                              'assets/staff2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 310,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'សេចក្តីប្រកាសព័ត៌មាន',
                                  style: TextStyle(
                                    fontFamily: "Schyler",
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            SizedBox(height: 5),
                            Expanded(
                              child: Text(
                                'នៅព្រឹកថ្ងៃអង្គារ ១៣កើត ខែអស្សុជ ឆ្នាំឆ្លូវ ត្រីស័ក ព.ស. ២៥៦៥ ត្រូវនឹង'
                                    'ថ្ងៃទី១៩ ខែតុលា ឆ្នាំ២០២១ ឯកឧត្តម ជិន ប៊ុនស៊ាន ទេសរដ្ឋមន្ត្រីទទួល'
                                    'បន្ទុកបេសកកម្មពិសេស អនុប្រធានក្រុមប្រឹក្សាអភិវឌ្ឍន៍កម្ពុជា (ក.អ.ក)'
                                    'បានដឹកនាំមន្ត្រី ក.អ.ក ចូលរួមកិច្ចប្រជុំពិនិត្យ និងពិភាក្សាអំពីរបាយការណ៍'
                                    'វាយតម្លៃពាក់កណ្ដាលអាណត្តិនៃការអនុវត្តគោលនយោបាយអភិវឌ្ឍន៍'
                                    'វិស័យឧស្សាហកម្មកម្ពុជា ឆ្នាំ២០១៥-២០២៥ (IDP) ក្រោមអធិបតីភាព'
                                    'ដ៏ខ្ពង់ខ្ពស់របស់ ឯកឧត្ដមអគ្គបណ្ឌិតសភាចារ្យ អូន ព័ន្ធមុនីរ័ត្ន'
                                    'ឧបនាយករដ្ឋមន្ត្រី រដ្ឋមន្ត្រីក្រសួងសេដ្ឋកិច្ច និងហិរញ្ញវត្ថុ និងជាប្រធានគណៈ'
                                    'កម្មាធិការគោលនយោបាយសេដ្ឋកិច្ច និងហិរញ្ញវត្ថុ តាមរយៈប្រព័ន្ធវីដេអូហ្ស៊ូម (Zoom)។',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF4A517).withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, size: 30, color: Colors.white70,),
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: const Icon(Icons.feed, size: 30, color: Colors.white70,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications, size: 30, color: Colors.white70,),
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            IconButton(
              icon: const Icon(Icons.person, size: 30, color: Colors.white70,),
              onPressed: () {
                _onItemTapped(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}