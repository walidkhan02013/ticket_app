import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// --------------------------------------------------
// int age = 5;
// String grade="C";

             
//              LIST  
// List<int> num =[1,2,4,5];

// void printNumbers(){
//   for(int i=0;i< num.length -1 ;i++){
//     print(num[i]);
//   }
// }



// void greet (){
//   print("Hello walid!");
// }

// void greetPerson(String name){
//   print("Hello "+name);
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // LIST
    // printNumbers();
      
      // CONDITIONAL
    // if(age>=18){
    //   print("you are an adult");
    // }
    // else{
    //   print("You are a kid");
    // }


    //SWITCH
    // ------------------------------
    // switch (grade) {
    //   case "A":
    //     print("Excellent");
    //     break;
    //   case "B":
    //   print("Good");
    //   break;
        
    //   default:
    //   print("You have failed");
    // }



    // ---------------------------
    // // METHODS AND FUNCTIONS


    // greet();

    //FUNCTIONS WITH OBJECTS
    // greetPerson("Alisha");
    // --------------------------------------------------
    

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
