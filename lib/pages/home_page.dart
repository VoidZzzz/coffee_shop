import 'package:avatar_glow/avatar_glow.dart';
import 'package:coffee_shop/widgets/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/gnav_widget.dart';
import '../widgets/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.black, Colors.grey[700]!],
                  ),
                ),
                child: const Icon(MyFlutterApp.grip_horizontal),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.black, Colors.grey[700]!],
                  ),
                ),
                child: Image.asset(
                  "images/avatar5.webp",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //leading text
            Text(
              'Find the best coffee for you',
              style: GoogleFonts.roboto(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),

            //search bar
            TextField(
              style: const TextStyle(color: Colors.white70),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                filled: true,
                fillColor: Colors.grey[800],
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white70,
                ),
                hintText: "find your coffee",
                hintStyle: GoogleFonts.roboto(
                    color: Colors.white70, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 310, width: double.maxFinite, child: TabBarWidget()),
            //horizon list view

            //special menu

            //vertical list view

            //bottom navi bar
          ],
        ),
      ),
      bottomNavigationBar: const GnavWidget(),
    );
  }
}
