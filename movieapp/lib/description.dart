import 'package:flutter/material.dart';
import 'package:movieapp/widgets/customtext.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  final String name, description, cover_image, vote, released_date, original_language;

  const Description({Key? key, 
    required this.name, 
    required this.description, 
    required this.cover_image, 
    required this.vote, 
    required this.released_date, 
    required this.original_language
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: Text(
          name,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
            height: 250,
            child: Stack(children: [
              Positioned(
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    cover_image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ])
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(10), 
            child: CustomText(
              text: name, //?? 'No title'
              size: 30, 
              color: Colors.white
            )
          ),
          Container(
            padding: EdgeInsets.all(10), 
            child: CustomText(
              text: '⭐' + vote + ' / 10', 
              size: 20, 
              color: Colors.white
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 10), 
            child: CustomText(
              text: 'Date Released: ' + released_date, 
              size: 20, 
              color: Colors.white
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 10), 
            child: CustomText(
              text: 'Language: ' + original_language, 
              size: 20, 
              color: Colors.white
            )
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(10), 
                  child: CustomText(
                    text: description, 
                    size: 18, 
                    color: Colors.white
                  )
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
