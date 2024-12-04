```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle the error here
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the exception here
    print('Error: $e');
    // Rethrow the exception to be handled further up the call stack if needed
    rethrow;
  }
}
```