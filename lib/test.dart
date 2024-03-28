import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Two Items Scroll'),
        ),
        body: Center(
          child: ItemScrollList(),
        ),
      ),
    );
  }
}

class ItemScrollList extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: (items.length /2).ceil(),
      itemBuilder: (BuildContext context, int index) {
        final int firstIndex = index * 2;
        final int secondIndex = firstIndex + 1;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildItem(firstIndex),
            SizedBox(width: 10), // Add spacing between items
            if (secondIndex < items.length) _buildItem(secondIndex),
          ],
        );
      },
    );
  }

  Widget _buildItem(int index) {
    return Container(
      width: 170,
      height: 250,
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          items[index],
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
