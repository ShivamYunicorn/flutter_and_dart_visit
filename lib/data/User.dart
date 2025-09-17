class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  // Factory constructor for creating a User from a JSON map
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  // Method for converting a User object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}