import 'package:flutter/material.dart';

// Экран с ListView.separated
class ListViewSeparatedScreen extends StatefulWidget {
  @override
  _ListViewSeparatedScreenState createState() =>
      _ListViewSeparatedScreenState();
}

class _ListViewSeparatedScreenState extends State<ListViewSeparatedScreen> {
  List<String> _items = ['Уведомление 1', 'Уведомление 2', 'Уведомление 3'];

  void _addItem() {
    setState(() {
      _items.add('Уведомление ${_items.length + 1}');
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
          child: ListView.separated(
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
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: _addItem, child: Text('Добавить')),
          ],
        ),
        SizedBox(height: 25,)
      ],
    );
  }
}
