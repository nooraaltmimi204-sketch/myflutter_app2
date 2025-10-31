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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

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
       backgroundColor: Colors.blue,
       title: Text('CV',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
        children: [
         Container( 
          child: Column(
            children: [
              Container(width: double.infinity,height: 300,color: Colors.blueGrey, child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CircleAvatar(radius: 50,
              backgroundImage: Image.asset('name').image,backgroundColor: const Color.fromARGB(255, 23, 94, 153),),
              Divider(),
              Text('Noora Altamimi',style: TextStyle(fontSize: 25),),
              Divider(),
              Text('Devloper',style: TextStyle(fontSize: 25),)
              ],
              ),
              ),
              
            ],
            
          ),
         ),
         Divider(),
         Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Email:'),
            Text('no1343@gmail.com'),
          ],
         ),
          Divider(),
         Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Phone:'),
            Text('735451213'),
          ],
         ),
         Divider(),
         Container(
         width: double.infinity,
         color: const Color.fromARGB(255, 119, 166, 248),
         child: Column(
          children: [
            Text('Skills',style: TextStyle(fontSize: 30),),
            Row(
              children: [
                Column(
                  children: [
                    Column(
                     children: [
                    Text('Html',style: TextStyle(fontSize: 20),),
                    Text('Css',style: TextStyle(fontSize: 20),),
                    Text('Java Script',style: TextStyle(fontSize: 20),),
                    Text('Java',style: TextStyle(fontSize: 20),),
                      ],
                    )
                    
                  ],
                )
              ],
            ),
            Divider(),
            Container(
             width: double.infinity,
             height: 200,
             color: Colors.blue,
             child: Column(
              children: [
                Text('Scientific Skills',style: TextStyle(fontSize: 30),),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('High School Completion Certificate',style: TextStyle(fontSize: 20),),
                        Text('English Language Diploma',style: TextStyle(fontSize: 20),),
                        Text('Computer Skills',style: TextStyle(fontSize: 20),),
                      
                      ],
                    )
                  ]
                )
              ],
             ),
            ),
            Divider(),
            Container(
             width: double.infinity,
             height: 200,
             color: const Color.fromARGB(255, 22, 117, 195),
             child: Column(
              children: [
                Text('Practical Skills',style: TextStyle(fontSize: 30),),
                Row(
                  children: [
                    Column(
                      children: [Text('Teamwork',style: TextStyle(fontSize: 20),),
                      Text('Excellence at Work',style: TextStyle(fontSize: 20),),
                      ],
                    )
                  ]
                )
              ],
             ),
            ),
            
          ],
         ),
         )
        ],
      )
        
        
      
          
         
        ),
      
        
        
      
          
         
        
     
     // This trailing comma makes auto-formatting nicer for build methods.
    ),
    );
  }
}
