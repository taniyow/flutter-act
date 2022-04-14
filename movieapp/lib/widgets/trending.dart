import 'package:flutter/material.dart';
import 'package:movieapp/widgets/customtext.dart';
import 'package:movieapp/description.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ const CustomText(
              text: "Trending Movies", 
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
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => Description(
                                name: trending[index]['title'] ??= 'No title',
                                cover_image: "https://image.tmdb.org/t/p/w500" + trending[index]['backdrop_path'],
                                description: trending[index]['overview'],
                                vote: trending[index]['vote_average'].toString(),
                                released_date: trending[index]['release_date'],
                                original_language: trending[index]['original_language'],
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
                                  image: NetworkImage("https://image.tmdb.org/t/p/w500" + trending[index]["poster_path"]
                                  )
                                )
                              ),
                            ),
                            Container(
                              child: CustomText(
                                text: trending[index]['title'] ?? 'No title', 
                                size: 15, 
                                color: Colors.white
                              )
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
