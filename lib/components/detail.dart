import 'package:flutter/material.dart';
import 'package:flutter_newsapplication_19/model/articlemodel.dart';

class Articlepage extends StatelessWidget {
  Articles articless;
  
  Articlepage({super.key,   required this.articless, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Article",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
        
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          
          
          child: Column(
            children: [
               if (articless.urlToimage!.isNotEmpty)
                Image.network(
                  articless.urlToimage!,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                 Container(
                  
                  
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      Text(articless.title!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                       SizedBox(height: 10,),
                       Text(articless.description!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                       Text(articless.publishedat!)
                       
                    ],
                  ),
           
                 )
               
                
                
              
          
              
            ],
          ),
        ) ,
      ),
    );
  }
}
