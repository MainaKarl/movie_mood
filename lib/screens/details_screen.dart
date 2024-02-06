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
            background:ClipRRect(
              borderRadius:const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.network(
                '${Constants.imagePath}${movie.posterPath}',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Overview',
                style:GoogleFonts.belleza(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                ),
              ),
                const SizedBox(height:25),
                Text(movie.overview,
                  style:GoogleFonts.openSans(
                    fontSize:25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height:25),
                SizedBox(
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(children: [
                        Text(
                          'Release date: ',
                          style: GoogleFonts.openSans(
                          fontSize:17,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          movie.releaseDate,
                            style: GoogleFonts.openSans(
                            fontSize:17,
                            fontWeight: FontWeight.bold,
                            ),
                        )
                      ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text('Rating ',
                            style: GoogleFonts.openSans(
                            fontSize:17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text('${movie.voteAverage.toStringAsFixed(1)}/10',
                            style: GoogleFonts.openSans(
                              fontSize:17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                  ),
                ),
              ],
            ),
          )
        ),
      ],
      ),
    );
  }
}
