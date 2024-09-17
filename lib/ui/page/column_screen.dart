import 'package:flutter/material.dart';

// Экран с Column
class ColumnScreen extends StatefulWidget {
  @override
  _ColumnScreenState createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  List<String> _items = ['Сообщение 1', 'Сообщение 2', 'Сообщение 3'];

  void _addItem() {
    setState(() {
      _items.add('Сообщение ${_items.length + 1}');
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
          child: SingleChildScrollView(
            child: Column(
              children: _items
                  .asMap()
                  .entries
                  .map((entry) => ListTile(
                        title: Text(entry.value),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => _removeItem(entry.key),
                        ),
                      ))
                  .toList(),
            ),
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