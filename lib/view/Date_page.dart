import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(DatePage());
}

class DatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date Example'),
        ),
        body: Center(
          child: DateText(),
        ),
      ),
    );
  }
}

class DateText extends StatelessWidget {
  String getCurrentDate() {
    DateTime now = DateTime.now();
    String dayOfWeek = DateFormat('EEEE', 'km').format(now); // For Khmer language
    String day = DateFormat('d', 'km').format(now);
    String month = DateFormat('MMMM', 'km').format(now);
    String yearBuddhist = (now.year + 543).toString(); // Buddhist calendar year
    String yearGregorian = DateFormat('yyyy').format(now);

    return 'ថ្ងៃ${dayOfWeek} ${day} រោច ខែ${month} ឆ្នាំរោង ពុទ្ធសករាជ ${yearBuddhist} ថ្ងៃទី${day} ខែ${month} ឆ្នាំ${yearGregorian}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        getCurrentDate(),
        style: TextStyle(fontFamily: "Schyler", fontSize: 10),
      ),
    );
  }
}