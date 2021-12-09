import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso del Scaffold"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("ANASHE BOY"),
            Image.network("https://upload.wikimedia.org/wikipedia/commons/a/a8/Colibri_coruscans.jpg", height: 100,),
            Image.network("https://thefourwinds.com/wp-content/uploads/2020/08/Four-Winds-Society-Blogs-2.png", height: 100,),
            Image.network("https://upload.wikimedia.org/wikipedia/commons/a/a8/Colibri_coruscans.jpg", height: 100,),
            Image.network("https://thefourwinds.com/wp-content/uploads/2020/08/Four-Winds-Society-Blogs-2.png", height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Habilitar el uso de la camara"),
                Switch(
                    value: true,
                    onChanged:(value) {} ,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(),
    );
  }
}
