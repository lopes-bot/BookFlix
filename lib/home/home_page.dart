import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> categorias = ["Android", "Java", "História", "Ciências"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 42),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text("Recommended"),
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categorias.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext c, int index) {
                  return Chip(label: Text(categorias.elementAt(index)));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
