import 'package:flutter/material.dart';
import 'package:sticky_notes/widgets/card_item.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sticky Notes",
      theme: ThemeData(fontFamily: 'JosefinSans'),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                color: Colors.grey,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close),
                    color: Colors.grey,
                  )
                ],
              )
            ],
          )),
      body: StickyNotes(),
    );
  }
}

class StickyNotes extends StatefulWidget {
  @override
  _StickyNotesState createState() => _StickyNotesState();
}

class _StickyNotesState extends State<StickyNotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Text(
                "Sticky Notes",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'JosefinSans'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Chip(
                  elevation: 5.0,
                  label: Text(
                    "Preview",
                    style: TextStyle(fontFamily: 'JosefinSans'),
                  ),
                  backgroundColor: Colors.black45,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search Notes",
                hintStyle: TextStyle(
                  fontFamily: 'JosefinSans',
                ),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(12.0))),
            style: TextStyle(fontFamily: 'JosefinSans'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
          child: CardItem(
            onPressed: () {},
            content: Text(
              "Hello World I am Vaibhav",
              style: TextStyle(fontFamily: 'JosefinSans', fontSize: 18.0),
            ),
            createdAt: "01:59",
            itemColor: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
          child: CardItem(
            onPressed: () {},
            content: Text(
              "Hello World I am Vaibhav",
              style: TextStyle(fontFamily: 'JosefinSans', fontSize: 18.0),
            ),
            createdAt: "01:59",
            itemColor: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
          child: CardItem(
            onPressed: () {},
            content: Text(
              "Hello World I am Vaibhav",
              style: TextStyle(fontFamily: 'JosefinSans', fontSize: 18.0),
            ),
            createdAt: "01:59",
            itemColor: Colors.amber,
          ),
        ),
      ],
    ));
  }
}
