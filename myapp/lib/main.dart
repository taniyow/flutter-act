import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            Image(
              width: 200,
              height: 200,
              image: AssetImage('assets/images/mrbean.png')
            ),
            SizedBox(
              height: 20.0
            ),
            Text(
              'Mr. Bean',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'AvengeroRegular-zvgl',
              ),
            ),
          ],
        )
      ),
    );
  }
}

class ColumnRow extends StatelessWidget {
  const ColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      Scaffold(
          appBar: AppBar(
            title: const Text('Columns and Rows'),
        ),
        body: Container(
          child: Container(
            child: Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red
                ),
                Positioned(
                  bottom: 100,
                  right: 100,
                  child:  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue
                  )
                )
              ],
            )
          ),
        )
      ),
    );
  }
}

// class Column extends StatelessWidget {
//   const Column({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var column = Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: const [
//           Text('Holy', style: TextStyle(fontSize: 20.0)),
//           Text('Angel', style: TextStyle(fontSize: 20.0)),
//           Text('University', style: TextStyle(fontSize: 20.0)),
//         ],
//       ),
//     );
//     var row = Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: const [
//           Text('Holy', style: TextStyle(fontSize: 20.0)),
//           Text('Angel', style: TextStyle(fontSize: 20.0)),
//           Text('University', style: TextStyle(fontSize: 20.0)),
//         ],
//       ),
//     );
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Columns and Rows'),
//         ),
//         body: row,
//       ),
//     );
//   }
// }

class UIWidgets extends StatelessWidget {
  const UIWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UI Widgets'),
        ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(40, 20, 30, 10),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ],
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.white]
              ),
            border: Border.all(
              color: Colors.black,
              width: 3.0,
              style: BorderStyle.solid,
            ),
            //borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: Colors.red,
            shape: BoxShape.circle
          ),
          child: const Text('Hello World',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ),
      ),
      )
    );
  }
}