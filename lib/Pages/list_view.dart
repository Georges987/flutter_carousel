import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridPage"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 200,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              width: 200,
              child: Card(
                  child: Center(
                child: Text("Text $index"),
              )),
            );
          }),
    );
  }
}
