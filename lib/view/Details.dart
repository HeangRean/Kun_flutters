import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF4A517).withOpacity(0.9),
        actions: const [
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
              const CircleAvatar(
                backgroundImage: AssetImage('assets/logo2.png'),
                radius: 25, // Adjust the radius as needed
              ),
              SizedBox(width: screenWidth * 0.05),
              const Text(
                'ព័ត៌មានលម្អិត',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'សហគ្រិនខ្មែរ, សមាគមអ្នកផលិតចំណីអាហារកម្ពុជា, សមាគមសហគ្រិនស្ត្រីកម្ពុជាខេត្តកោះកុង និងអង្គការ iDE Cambodia សហការគ្នាអនុវត្តគម្រោង «ជលផលសមុទ្រ និងតំបន់ឆ្នេរប្រកបដោយជីវភាព',
                    style: TextStyle(fontSize: 18, color: Color(0xff102968)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '(ភ្មេញ)៖ សហគ្រិនខ្មែរ ដែលជាស្ថានប័នបង្កើតឡើងក្រោមគំនិតផ្ដួចផ្ដើមរបស់ រាជរដ្ឋាភិបាលក្នុងគោលបំណងជំរុញ ការអភិវឌ្ឍប្រព័ន្ធអេកូឡូស៊ី'
                        'សហគ្រិនអោយរស់រវើកនៅកម្ពុជា នៅថ្ងៃទី ២៨ ខែមិថុនា ឆ្នាំ ២០២៤បានសមាគមអ្នកផលិតអាហារកម្ពុជា (CFMA) សមាគមសហគ្រិនស្រ្ដីកម្ពុជាខេត្ត'
                        'កោះកុង (CWEA) និងអង្គការ iDE Cambodia។ កិច្ចសហការនេះបង្ហាញពីការចាប់ផ្ដើមនៃគម្រោង “​ជលផលសមុទ្រ និងតំបន់ធ្នេរប្រកបដោយចីរភាព'
                        '” ដែលជាជំហានដ៏សំខាន់មួយ ឆ្ពោះទៅរកការកែលម្អជីវភាពរបស់ ប្រជាពលរដ្ឋរស់នៅតំបន់ឆ្នេរ។',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'គម្រោង “ជលផលសមុទ្រ និងតំបន់ឆ្នេរប្រកបដោយចីរភាព” ត្រូវបានរៀបចំឡើង ដើម្បីបង្កើនភាពធន់នឹង អាកាសធាតុ និងនិរន្តរភាពនៃធនធាន'
                        'ជលផលសមុទ្រ នៅតំបន់ឆ្នេរក្នុងប្រទេសកម្ពុជា។ គម្រោងនេះផ្តោតលើខេត្តជាប់មាត់សមុទ្រចំនួនបួន នៃប្រទេសកម្ពុជាគឺ ខេត្តកំពត ខេត្តកែប ខេត្តកោះកុង និងខេត្តព្រះសីហនុ ក្នុងគោលបំណងកែប្រែការធ្លាក់ចុះយ៉ាង'
                        'គំហុក នៃធនធានជលផលសមុទ្រ ដែលនេសាទបាន ជំរុញការធ្វើវារីវប្បកម្មសមុទ្រប្រកបដោយនិរន្តរភាព និងធ្វើឲ្យប្រសើរឡើង នូវផែសហគមន៍ ឬទីតាំងសម្រាប់ប្រមូលជលផលសមុទ្រ ដើម្បីកែលម្អគុណភាពនិងសុវត្ថិភាព'
                        'ផលិតផលសមុទ្រ។',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: screenWidth * 0.75,
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/Rectangle8.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: screenWidth * 0.75,
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/Rectangle9.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: screenWidth * 0.75,
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/Rectangle10.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: screenWidth * 0.75,
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/Rectangle8.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}