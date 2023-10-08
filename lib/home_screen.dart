import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('MOVIE MOOD',
        style: TextStyle(
            fontSize:30,
          color: Colors.red,
        ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Trending Movies',
              style: GoogleFonts.aBeeZee(fontSize: 25),
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                  itemCount: 10,
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    viewportFraction: 0.55,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                  ),
                  itemBuilder: (context,itemIndex, pageViewIndex){
                    return Container(
                    height: 300,
                    width: 200,
                      color: Colors.orange,
                    );
            },
              ),
            )
          ],
        ),
      ),
    );
  }
}