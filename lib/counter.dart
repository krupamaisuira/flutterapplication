import 'package:flutter/material.dart';
import 'package:flutterapplication/main.dart';


void main()
{
  runApp(const MyCounterApp());
}
class MyCounterApp  extends StatelessWidget {
  const MyCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Counter App',
      theme : ThemeData(primarySwatch: Colors.deepPurple),
      home : new CounterDemo(),

    );
  }
}
class CounterDemo extends StatefulWidget {
  const CounterDemo({Key? key}) : super(key: key);

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int _n = 0;
  void add(){
    setState(() {
      _n++;
    });
  }
  void minus()
  {
    setState(() {
      _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),

      ),
      body : Container(
        child : Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(onPressed: add,
              child : new Icon(Icons.add,color : Colors.white,),
                backgroundColor: Colors.blue,

              ),
              Text('$_n',style: TextStyle(fontSize: 45),),
              FloatingActionButton(onPressed: minus,
                child : new Icon(Icons.remove,color : Colors.white,),
                backgroundColor: Colors.red,

              ),
              FloatingActionButton(onPressed:() {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
                child : new Icon(Icons.arrow_back,color : Colors.white,),
                backgroundColor: Colors.black,

              ),
            ],
          ),

        )

      )
    );
  }
}

