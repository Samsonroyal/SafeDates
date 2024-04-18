import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Navbar extends StatefulWidget {
  final Function(int) onTap;

  const Navbar({required this.onTap});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(LineIcons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(LineIcons.heart), label: "Discover"),
        BottomNavigationBarItem(icon: Icon(LineIcons.commentAlt), label: "Messages"),
        BottomNavigationBarItem(icon: Icon(LineIcons.user), label: "Profile")
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        widget.onTap(index);
      },
    );
  }
}