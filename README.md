# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming: an unhandled exception in a `Future`. The `fetchData` function fetches data from an API and handles potential errors. However, the `rethrow` statement doesn't provide a way to gracefully handle the failure and might lead to unexpected app behavior.

## How to Reproduce

1. Clone the repository.
2. Run the `bug.dart` file.
3. Observe the console output and the program's behavior.  If the API request fails, a generic error is printed to the console, but the application likely continues running.

## Solution

The `bugSolution.dart` file demonstrates a more robust way to handle the exception. Instead of simply rethrowing, it catches the exception and performs appropriate actions, such as displaying an error message to the user or retrying the request.
