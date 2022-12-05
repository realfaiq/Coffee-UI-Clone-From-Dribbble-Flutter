import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/coffee_tiles.dart';
import '../utils/coffee_type.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ]),
      body: SingleChildScrollView(
          child: Column(children: [
        //Text Widget Find the best coffee for yourself
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Find the best Coffee for Yourself!',
            style: GoogleFonts.bebasNeue(fontSize: 40),
          ),
        ),

        SizedBox(
          height: 25,
        ),
        //Search Bar
        SizedBox(
          height: 60,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your Coffee..',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  )),
            ),
          ),
        ),

        SizedBox(
          height: 25.0,
        ),
        //List of Coffee tiles

        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeType('Cappucino', true),
              CoffeeType('Latte', false),
              CoffeeType('Black', false)
            ],
          ),
        ),

        Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                  'https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  'Latte',
                  'With Almond Milk',
                  '\$4.00'),
              CoffeeTile(
                  'https://images.unsplash.com/photo-1507133750040-4a8f57021571?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  'Cappucino',
                  'With Almond Milk',
                  '\$5.00'),
              CoffeeTile(
                  'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1937&q=80',
                  'Coffee Milk Thing',
                  'With Almond Milk',
                  '\$8.00')
            ],
          ),
        ),

        //Bottom Navigation Bar
      ])),
    );
  }
}
