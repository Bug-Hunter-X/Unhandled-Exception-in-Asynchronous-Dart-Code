# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: not handling potential exceptions during asynchronous operations.  The provided code uses the `http` package to fetch data from a URL, but fails to properly handle exceptions that may occur during the network request. This can lead to application crashes or unexpected behavior.

The `bug.dart` file contains the erroneous code.  The `bugSolution.dart` file provides a corrected version with proper exception handling, preventing crashes and allowing for graceful error recovery.