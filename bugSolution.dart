```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      //Handle the JSON data appropriately
      print('Data fetched successfully: $jsonData');
    } else {
      //Handle non-200 status codes appropriately
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
  } on http.ClientException catch (e) {
    print('Error: Network error: $e');
  } catch (e) {
    print('Error: An unexpected error occurred: $e');
  }
}
```