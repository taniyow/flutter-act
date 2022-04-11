import 'package:flutter/material.dart';
import 'package:movieapp/widgets/customtext.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Trending Movies', 
              color: Colors.white, 
              size: 30.0
            ),
            Container(
              height: 250.0,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        width: 140.0,
                        child: Column(
                          children: [
                            Container(
                              height: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['poster_path']
                                  )
                                )
                              ),
                            ),
                            Container(
                              child: CustomText(
                                text: trending[index]['title'] ?? 'No title',
                                color: Colors.white,
                                size: 15.0,
                              )
                            )
                          ]
                        )
                      )
                    );
                  }
                ),
              )
            )
          ]
        ),
      )
    );
  }
}