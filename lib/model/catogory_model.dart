import 'dart:convert';

class Source{
  String? id;
  String? name;

  Source({this.id,this.name});

    factory Source.fromjason(Map<String,dynamic>json){
      return Source(
        id: json['id'],
        name: json['name']

      );
    }

  }
