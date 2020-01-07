import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardItem({@required this.content, @required this.onPressed, this.createdAt, this.itemColor});
  final Function onPressed;
  final Widget content;
  final String createdAt;
  final Color itemColor;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Card(
        color: Color(0XFF616161),
        elevation: 8.0,
        child: Container(
          height: 70,
          child: Column(
            children: <Widget>[
              Container(
                height: 6,
                color: itemColor != '' ? itemColor : Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:3.0, top: 8.0, right: 0.0),
                      child: Center(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: content == ''
                                  ? Text("Add some content")
                                  : content)),
                    ),
                    Center(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: createdAt == ''
                                ? Text("00:00")
                                : Text(createdAt, style: TextStyle(color: itemColor != '' ? itemColor : Colors.amber),))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
