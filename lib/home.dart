import 'package:flutter/material.dart';
import 'package:nwes/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<new_provider>(context);
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: Column(
                children: [
                  Image.network(p.obj?.articles[index]["urlToImage"]),
                  SizedBox(
                    height: 400,
                  ),
                  Text(p.obj?.articles[index]["title"]),  
                  SizedBox(
                    height: 40,
                  ),
                  Text(p.obj?.articles[index]["description"]),
                ],
              ),
            );
          },
      ),
    );
  }
}
