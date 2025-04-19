import 'package:flutter/material.dart';


class CustomBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavigationBarItem> items;  // Add this parameter

  const CustomBottomNavigation({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
    required this.items,  // Accept the items parameter here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items, // Use the items passed as parameter
      currentIndex: selectedIndex,
      onTap: onTap,
      selectedItemColor: const Color(0xFF1B383A),
      unselectedItemColor: const Color.fromARGB(255, 78, 74, 74),
      backgroundColor: Colors.blue,
    );
  }
}
