import 'package:flutter/material.dart';
import 'package:movieapp/widgets/customtext.dart';
import 'package:movieapp/description.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({Key? key, required this.toprated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "Top Rated Movies", 
              color: Colors.white, 
              size: 25
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 270,
              child: Container(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: toprated.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () { 
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => Description(
                                name: toprated[index]['title'],
                                cover_image: "https://image.tmdb.org/t/p/w500" + toprated[index]['backdrop_path'],
                                description: toprated[index]['overview'],
                                vote: toprated[index]['vote_average'].toString(),
                                released_date: toprated[index]['release_date'],
                                original_language: toprated[index]['original_language'],
                              )
                            )
                          );
                        },
                        child: Container(
                          width: 140,
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://image.tmdb.org/t/p/w500" + toprated[index]["poster_path"]
                                    )
                                  )
                                ),
                              ),
                              Container(
                                child: CustomText(
                                  text: toprated[index]['title'] ?? 'No title', 
                                  size: 15, 
                                  color: Colors.white
                                )
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
