import 'dart:io';
import 'dart:math';

void main() async {
  /*
    // example 1:
    print("Loading user profile...");
    String data = await getUserProfile();
    print(data);
    print("Completed");
   */

  /*

  // example 2:
  try {
    String? weather = await fetchWeather();
    if (weather != null) {
      print(weather);
    }
  } catch (e) {
    print("Error message: $e");
  }
  */

  var result = await Future.wait([
    fetchPost(),
    fetchComments()
  ]);
  print( "Post and comment outputs: ${result[0]} & ${result[1]}");

}

// example 1 function
Future<String> getUserProfile() async {
  await Future.delayed(Duration(seconds: 2));
  return "------------ Shivam Patel ------------";
}

// example 2 function
Future<String> fetchWeather() async {
  await Future.delayed(Duration(seconds: 2));
  bool success = Random().nextBool();

  if (success) {
    return "Sunny ☀";
  } else {
    throw SocketException("Network Error");
  }
}

// example 3:
Future<String> fetchPost() async {
  await Future.delayed(Duration(seconds: 2));
  return "Post ✅";
}

Future<String> fetchComments() async {
  await Future.delayed(Duration(seconds: 3));
  return "Comment ✅";
}
