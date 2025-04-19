import 'package:flutter/material.dart';
import 'package:ecom_login_flutter/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  final List<Widget> screens;
  final List<BottomNavigationBarItem> bottomNavigationItems;
  final String appBarTitle;

  const HomeScreen({
    super.key,
    required this.screens,
    required this.bottomNavigationItems,
    this.appBarTitle = '',
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Update the selected screen based on the index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
        elevation: 0,
      ),
      body: widget.screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigation(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: widget.bottomNavigationItems, // Pass the items here
      ),
    );
  }
}
