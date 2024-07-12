import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tutor"),
        ),
        body: const RouteOne()),
    );
  }
}
  

class RouteOne extends StatelessWidget {
  const RouteOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(onPressed: () => {
       Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const RouteTwo() ,))
      }, child: const Text("Navigate")),
    );
  }
}


class RouteTwo extends StatelessWidget {
  const RouteTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Route two"),
      ),
      body: ElevatedButton(onPressed: () => {
        Navigator.pop(context)
      },
      child: const Text("Button 2"),),
    );
  }
}

class MyFirstStatfulWidget extends StatefulWidget {
  const MyFirstStatfulWidget({super.key});

  @override
  State<MyFirstStatfulWidget> createState() => _MyFirstStatfulWidgetState();
}

class _MyFirstStatfulWidgetState extends State<MyFirstStatfulWidget> {
  bool isGreen =false; 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () =>{
          // ignore: unnecessary_set_literal
          setState(()=>{
            isGreen = !isGreen
          })
        },
        child: Container(
          padding: const EdgeInsets.all(40),
          color: isGreen ? Colors.green :Colors.amber,
          child: const Text("Hello Stateful Widget")),
      ),
    );
  }
}



class Home extends StatelessWidget {
  Home({super.key});
  final List<String> friends = ["Denny", "Kinanga", "Shuvo", "Rodoshi"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: friends.length,
          itemBuilder: (context,index){
          return Container(
            padding: const EdgeInsets.all(8),
            color: Colors.green,
            margin: const EdgeInsets.only(bottom: 1),
            child: Text(friends[index]));
        });
  }
}