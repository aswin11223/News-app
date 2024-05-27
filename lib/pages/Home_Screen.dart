import 'package:flutter/material.dart';
import 'package:flutter_newsapplication_19/components/costum_page.dart';

import 'package:flutter_newsapplication_19/model/articlemodel.dart';
import 'package:flutter_newsapplication_19/services/apiservice.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter News",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Articles>>(
          future: client.getArticles(),
          builder: (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Center(child: Text("Error: ${snapshot.error}"));
            } else if (snapshot.hasData && snapshot.data!.isEmpty) {
              return Center(child: Text("No articles available"));
            } else {
              // Display the list of articles using ListView.builder
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final article = snapshot.data![index];
                  return Custom(
                    title: article.title ?? '',
                    description: article.description?? '',
                    urlToimage: article.urlToimage ?? '',
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
