import 'package:flutter/material.dart';
import 'package:flutterapplication/counter.dart';

void main() {
  runApp(MaterialApp(

      home : MyApp())
  );
}

class MyApp extends StatefulWidget {
  @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Hey SnackBar'),
        ),
        body :Container(
               child:Center(
                 child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       ElevatedButton(onPressed: (){
                         ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(content: Text('Thank you to visit Flutter App'),)
                         );
                       }, child: Text('Click Me')),
                       ElevatedButton(onPressed: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const MyCounterApp()),
                         );
                       }, child: Text('Counter'))

                       ]

                 ),

               )
        ),
        // body:Center(
        //
        //
        //   child: ElevatedButton(
        //
        //
        //     child: Text('Click Me'),
        //     onPressed: (){
        //       ScaffoldMessenger.of(context).showSnackBar(
        //        SnackBar(content: Text('Thank you to visit Flutter App'),)
        //       );
        //     },
        //
        //   ),
        //
        // ),
      );

  }
}



// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title ='Flutter Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: _title,
//       home : MyStatelessWidgetDemo()
//
//     );
//   }
// }
class MyStatelessWidgetDemo extends StatelessWidget {
  const MyStatelessWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Column Widget'),

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Quebec Province',style : TextStyle(fontSize: 24.0),),
            Text('Montréal',style : TextStyle(fontSize: 20.0),),
            Text('Outaouais',style : TextStyle(fontSize: 20.0),),
            Text('Côte-Nord',style : TextStyle(fontSize: 20.0),),
            Icon(
              Icons.calendar_month_sharp,
              color : Colors.amber,
              size :50,

            ),
            Icon(
              Icons.audiotrack_rounded,
              color : Colors.deepPurple,
              size :30,

            ),
          ],
        ),

      ),
    );
  }
}




// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Tutorial';
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       title: _title ,
//       home : MyStatelessWidget()
//     );
//   }
// }
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome to Flutter App'),
//       ),
//       body:Center(
//         child: Text(
//           'Hello Krupa how are you fjghdfgdfkgj vnn gfhfgh!'
//         ),
//       ),
//
//     );
//   }
// }
