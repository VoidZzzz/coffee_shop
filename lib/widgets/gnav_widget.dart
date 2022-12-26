import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GnavWidget extends StatefulWidget {
  const GnavWidget({Key? key}) : super(key: key);

  @override
  State<GnavWidget> createState() => _GnavWidgetState();
}

class _GnavWidgetState extends State<GnavWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: GNav(
        color: Colors.white70,
        tabBackgroundColor: Colors.grey.shade900,
        backgroundColor: Colors.black,
        padding: const EdgeInsets.all(8),
        activeColor: Colors.deepOrange,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite_outlined,
            text: 'Favourites',
          ),
          GButton(
            icon: Icons.shop_two,
            text: 'Order',
          ),
          GButton(
            icon: Icons.notification_important,
            text: 'Notifications',
          ),
        ],
      ),
    );
  }
}
