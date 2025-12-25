import 'package:flutter/material.dart';
import 'package:uniqlo/model/uniqlo.dart';
import 'package:uniqlo/uniqlo_detail.dart';

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(title: 'UNIQLO SHIRT'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text(widget.title)),
      body: SafeArea(
        child: Container(
        child: ListView.builder(
          itemCount: Uniqlo.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => UniqloDetail(uniqlo: Uniqlo.samples[index]),
                    ));
              },
              child: buildRecipeCard(Uniqlo.samples[index]),
            ); //call functions
          },
        ),
      )
      ),
    );
  }

  Widget buildRecipeCard(Uniqlo uniqlo) {   //ฟังก์ชั่นดีไซต์
    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(uniqlo.imgUrl)),
            SizedBox(height: 8.0),
            Text(
              uniqlo.imgTitle, 
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}