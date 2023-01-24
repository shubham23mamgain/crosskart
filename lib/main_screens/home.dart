import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
      appBar : AppBar(
        elevation:0,
        backgroundColor : Colors.white,
        title : const CupertinoSearchTextField(),
        bottom : TabBar(
          tabs : [
          Tab(child : Text('Men', style: TextStyle(
              color: Colors.grey,
            ),
           ),
          ),
          Tab(child : Text('Women', style: TextStyle(
              color: Colors.grey,
            ),
           ),
          ),
          Tab(child : Text('Kids', style: TextStyle(
              color: Colors.grey,
            ),
           ),
          ),
         ],
        ),
      ),
      body : TabBarView(
        children : [
          Center(child : const Text('mens Screen'),),
          Center(child : const Text('womens Screen'),),
          Center(child : const Text('kids Screen'),),
        ],
      ),
     ),
    );
  }
}