import 'package:flutter/material.dart';
import 'package:se494_second_works/pages/cal.dart';
import 'package:se494_second_works/pages/contract.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [HomePage(),CalculatorPage(),ContractPage()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Application"),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home page"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculate"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Contact me"),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
