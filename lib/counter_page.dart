import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;
  incrementCounter(){
    setState(() {
      counter++;
    });
  }
  decrementCounter(){
    setState(() {
      counter--;
    });
  }
    resetCounter(){
    setState(() {
      counter=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(child: Text('Counter app',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),)),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(color: Colors.white,fontSize: 200),
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        incrementCounter();
                      },
                      child: Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: (){
                        resetCounter();
                      },
                      child: Icon(Icons.restore)),
                  ElevatedButton(
                      onPressed: (){
                        decrementCounter();
                      },
                      child: Icon(Icons.remove)),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
