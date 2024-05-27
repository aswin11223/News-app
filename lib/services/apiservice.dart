import 'dart:convert';
import 'package:flutter_newsapplication_19/model/articlemodel.dart';
import 'package:flutter_newsapplication_19/test_case.dart';
import 'package:http/http.dart' as http;

class ApiService {

  testt hai=testt();
  Future<List<Articles>> getArticles() async {
    final endpoint = Uri.parse(
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=dbd061b20f774003b113126e2f2435fc");
    try {
      final response = await http.get(endpoint);
    
    hai.mainn();

      
      if (response.statusCode ==200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> body = json['articles'];
        
        // Mapping JSON data to Article objects
        List<Articles> articles =
            body.map((dynamic item) => Articles.fromjason(item)).toList();
        
        return articles;
      } else {
        // Handle HTTP errors
        throw Exception('Failed to load articles');
      }
    } catch (e) {
      // Handle other errors
      throw Exception('Failed to fetch articles: $e');
    }
  }
}
