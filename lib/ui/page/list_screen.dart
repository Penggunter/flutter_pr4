import 'dart:math';

import 'package:flutter/material.dart';

// Экран с ListView
class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {

  var randValue = Random().nextInt(10);
  List<String> _randUser = ['Penguin', 'SbeuKomar', 'Kubai', 'Aboba', 'FlutterEnjoyer', 'Frank', 'John Wick', 'Steck', 'Andrew', 'Helicopter2000'];
  List<String> _items = ['Penguin'];

  void _addItem() {
    setState(() {
      _items.add(_randUser[randValue]);
      randValue = Random().nextInt(10);
    });
  }

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_items[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _removeItem(index),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: _addItem, child: Text('Добавить')),
          ],
        ),
        SizedBox(height: 25,),
      ],
    );
  }
}
