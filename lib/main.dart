// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:carouselflutter/Pages/list_view.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Carousel(),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Carousel with *view"),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 20,
                      child: SizedBox(
                        width: 200,
                        child: Center(child: Text("Card $index")),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 30,
                    );
                  },
                  itemCount: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text("GridView Delegate"),
              leading: const Icon(Icons.grid_3x3),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GridPage()));
              },
            )
          ],
        ));
  }
}
