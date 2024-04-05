import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  // name
  final String name;

  // handle
  final String handle;

  // text
  final String text;

  // constructor
  Post({
    required this.name,
    required this.handle,
    required this.text,
  });

  // json serialization
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'handle': handle,
      'text': text,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      name: map['name'] as String,
      handle: map['handle'] as String,
      text: map['text'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source) as Map<String, dynamic>);

  // toString
  @override
  String toString() => 'Post(name: $name, handle: $handle, text: $text)';
}
