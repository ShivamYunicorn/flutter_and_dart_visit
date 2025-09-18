
main() {
  countdown(10).listen(
    (event) => print(event),
    onError: (e) => print("Error: $e"),
    onDone: () => print("All done"),
    cancelOnError: true,
  );
}

Stream<int> countdown(int seconds) async* {
  for (int i = seconds; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));

    try {
      if (i == 5) {
        throw Exception("Some thing went wrong");
      }
      yield i;
    } catch (e) {
      // print("Handled inside stream: $e");
      throw e;
    }

  }
}
