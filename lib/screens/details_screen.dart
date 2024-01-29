import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_mood/colors.dart';
import 'package:movie_mood/constants.dart';
import 'package:movie_mood/models/movie.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(slivers: [
        SliverAppBar.large(
          leading: Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(top: 16, left: 16),
            decoration: BoxDecoration(
                color: Colours.scaffoldBgColor,
                borderRadius: BorderRadius.circular(8)
            ),
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
            },
              icon: const Icon(Icons.arrow_back_rounded,
              ),
            ),
          ),
          backgroundColor: Colours.scaffoldBgColor,
          expandedHeight: 500,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(movie.title,style: GoogleFonts.belleza(
                fontSize: 16,
                fontWeight: FontWeight.w600,
            ),
            ),
            background:Image.network(
                filterQuality: FilterQuality.high,
                ('${Constants.imagePath}${movie.backDropPath}')),
          ),
        )
      ],),
    );
  }
}
