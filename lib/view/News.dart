import 'package:flutter/material.dart';
import 'package:project_team/view/Details.dart';
import 'package:project_team/view/Homepages.dart';
import 'auth/login_screen.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/logo2.png'),
                radius: 25, // Adjust the radius as needed
              ),
              SizedBox(width: 50),
              Text(
                'ព័ត៌មានថ្មីៗ',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepages()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Login'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Column(
              children: List.generate(newsItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                  child: Container(
                    height: 105,
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: const Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 140,
                            child: Image.asset(newsItems[index]['image']!),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    newsItems[index]['title']!,
                                    style: const TextStyle(fontSize: 18),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(newsItems[index]['date']!),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF4A517).withOpacity(0.9), // Set the background color here
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, size: 30, color: Colors.white70),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepages()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.feed, size: 30, color: Colors.white70),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsPage()),
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

const newsItems = [
  {
    'image': 'assets/Rectangle1.png',
    'title': 'ដំណើរទស្សនកិច្ចសិក្សាទៅកាន់ខេត្តមណ្ឌលគិរី ក្នុងដំណើរការ ទស្សនកិច្ចនេះ និសិ្សតបានចុះកិច្ចសិក្សា និងប្រមូលព័ត៍មាន',
    'date': '27-04-2020 07:02:49',
  },
  {
    'image': 'assets/Rectangle2.png',
    'title': 'ការកំណត់សមាសភាពក្រុមប្រឹកក្សាភិបាលសិក្សាទីផ្សារ និងផ្សាយទេសចរណ៍កម្ពុជា (ភ្នំពេញ)៖ រាជរដ្ឋាភិបាលបានចេញសេចក្ដីសម្រេច',
    'date': '27-04-2020 07:02:49',
  },
  {
    'image': 'assets/Rectangle3.png',
    'title': 'កិច្ចសម្ភាសន៍របស់លោកស្រីបណ្ឌិត​ សូ សុគន្ធារី ប្រធានកិត្តិយសផ្នែកស្ថាបត្យកម្ម និងជាក្រុមប្រឹក្សានៃសមាគមស្ថានបត្យករកម្ពុជា',
    'date': '27-04-2020 07:02:49',
  },
  {
    'image': 'assets/Rectangle4.png',
    'title': 'សហគ្រិនខ្មែរ, សមាគមអ្នកផលិត ចំណីអាហារ កម្អុជា, សមាគម សហគ្រិនស្រ្ដីកម្ពុជា, សមាគម សហគ្រិន ស្រ្ដីកម្ពុជាខេត្តកោះកុង និងអង្គការ',
    'date': '27-04-2020 07:02:49',
  },
  {
    'image': 'assets/Rectangle5.png',
    'title': 'រដ្ឋមន្រ្ដីក្រសួងអប់រំ កោតសរសើរ និងវាយតម្លៃ ខ្ពស់លើកម្មវិញសិក្សា ដ៏សម្បូរបែប របស់សាលា អន្ដរជាតិ​ ស៊ី អាយ អេ ហ្វឺសត៍ ជាពិសេសកម្ម',
    'date': '27-04-2020 07:02:49',
  },
  {
    'image': 'assets/Rectangle6.png',
    'title': 'នាយកប្រតិបត្តិក្រុមហ៊ុនស្មាតហ្វូនចិន Honor និយាយថា AI គឺ “គ្មានតម្លៃ” ប្រសិនបើទិន្ន័យឯក ជនគ្មានសុវត្តិភាព។',
    'date': '27-04-2020 07:02:49',
  },
  {
    'image': 'assets/Rectangle1.png',
    'title': 'ដំណើរទស្សនកិច្ចសិក្សាទៅកាន់ខេត្តមណ្ឌលគិរី ក្នុងដំណើរការ ទស្សនកិច្ចនេះ និសិ្សតបានចុះកិច្ចសិក្សា និងប្រមូលព័ត៍មាន',
    'date': '27-04-2020 07:02:49',
  },
];