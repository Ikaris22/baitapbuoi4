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
        // the application has a blue toolbar. Then, without quitting the app,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
      body:  Container(
        padding: const EdgeInsets.only(top:150),
        decoration: const BoxDecoration(
            color: Colors.tealAccent),
        alignment: Alignment.center,
        child: Column(
            children:[
              androidLogo(),
              const SizedBox(height:250),
              infomation(),
            ]
        ),
      )
    );
  }
}

infomation() {
  return  Container(
      margin:const EdgeInsets.only(left:100,right:100),
      child: Column(
        children:[
          iconAndContent(icon: Icons.phone_rounded,content: '0129384793'),
          const SizedBox(height: 5),
          iconAndContent(icon: Icons.share_outlined,content: 'FB: VoMinhHieu'),
          const SizedBox(height: 5),
          iconAndContent(icon: Icons.email_outlined,content: 'vohieu@gmail.com')
        ],
      )
  );
}

androidLogo() {
  return Column(
      children:[
        Image.asset('assets/image3.webp',
            width: 150,
            height:110),
        const Text('VO MINH HIEU',
            style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
        const Text('Android Deverloper Extraordinaire',
          style: TextStyle(fontSize:17),)
      ]
  );
}

iconAndContent({required IconData icon, required String content}) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Icon(icon, color: Colors.brown),
        const SizedBox(width: 40),
        Text(content,
            style: const TextStyle(color: Colors.brown))
      ]
  );
}