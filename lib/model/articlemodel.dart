//create the article modelclass

// ignore_for_file: empty_constructor_bodies

import 'package:flutter_newsapplication_19/model/catogory_model.dart';

class Articles{
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToimage;
  String? publishedat;
  String? content;

  Articles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToimage,
    this.publishedat,
    this.content

  });

  factory Articles.fromjason(Map<String,dynamic>json){
    return Articles(
      source: Source.fromjason(json['source']),
      author: json['author'] ,
      title: json['title'] ,
      description: json['description'],
      url: json['url'] ,
      urlToimage: json['urlToImage'] ,
      publishedat: json['"publishedAt'] ,
      content: json['"content'] 

    );
  }

 

}