```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error response gracefully
      print('Error fetching data: ${response.statusCode}');
      // Optionally display an error message to the user
    }
  } catch (e) {
    // Handle exceptions and prevent the app from crashing
    print('An error occurred: $e');
    // Optionally, display an user-friendly error message
    // Optionally, implement retry logic
  }
}
```