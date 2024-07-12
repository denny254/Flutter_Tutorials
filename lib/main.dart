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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: const MyFirstStatfulWidget()),
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