import 'dart:convert';

class User {
  final String name;
  final int age;

  User({this.name, this.age});

  User.fromJson(Map<String, dynamic> map)
      : name = map['name'],
        age = map['age'];

  static User fromJsonString(String jsonStr) {
    return User.fromJson(json.decode(jsonStr));
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };

  String toJsonString() => json.encode(this);
}
