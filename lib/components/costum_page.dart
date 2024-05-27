import 'package:flutter/material.dart';
import 'package:flutter_newsapplication_19/components/detail.dart';
import 'package:flutter_newsapplication_19/model/articlemodel.dart';


class Custom extends StatelessWidget {
final String title;
final String description;
final String urlToimage;


  const Custom({super.key, 
  required this.title,required this.description,required this.urlToimage, 
  });

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Articlepage(articless: Articles(title: title, description:description, urlToimage: urlToimage)))
      
      );
    },


    child: ListTile(
      title: Text(title,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
      subtitle: Text(description,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
      leading: urlToimage.isNotEmpty?
       Image.network(urlToimage,
                width: 100,
                height: 200,
                fit: BoxFit.cover,
       ):SizedBox.shrink()
    ),
  );

  }
}