import 'package:flutter/material.dart';
import 'package:crosskart/main_screens/home.dart';
class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    HomeScreen(),
    Center(child : Text("Category")),
    Center(child : Text("Stores")),
    Center(child : Text("Cart")),
    Center(child : Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar:  BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        elevation:0,
        selectedLabelStyle : const TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor : Colors.black,
        // unselectedItemColor : Colors.red,
        currentIndex: _selectedIndex,
        items : const [
          BottomNavigationBarItem(icon:Icon(Icons.home), label : 'Home', backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon:Icon(Icons.search), label : 'Category', backgroundColor: Colors.red),
          BottomNavigationBarItem(icon:Icon(Icons.shop), label : 'Stores',backgroundColor: Colors.green),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart), label : 'Cart',backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon:Icon(Icons.person), label : 'Profile',backgroundColor: Colors.pink),
        ],
        onTap:(index){
          setState((){
            _selectedIndex = index;
          });
        }
      ),
    );
  }
}