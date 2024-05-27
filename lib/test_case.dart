
import 'package:flutter_newsapplication_19/services/apiservice.dart';
import 'package:flutter_test/flutter_test.dart';
class testt{
void mainn() {
  test('Test API request', () async {
    final apiService = ApiService();

    // Measure the time taken for the API request
    final startTime = DateTime.now();
    final articles = await apiService.getArticles();
    final endTime = DateTime.now();

    // Calculate the actual response time in milliseconds
    final actualResponseTime = endTime.difference(startTime).inMilliseconds;

    // Adjust the expected response time as needed
    final expectedResponseTime = 500; // Adjusted expected response time in milliseconds

    // Assert that the actual response time is below the expected threshold
    expect(
      actualResponseTime,
      lessThan(
        expectedResponseTime,
      ),
      reason: 'Response time exceeds expected threshold',
    );

    // Additional assertions on the articles if needed
    expect(articles, isNotEmpty);
  });
}
}