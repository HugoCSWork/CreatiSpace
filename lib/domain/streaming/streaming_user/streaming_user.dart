import 'package:auto_route/auto_route.dart';

class StreamingUser {
    String id;
    String username;

    StreamingUser(String id, String username) {
      this.id = id;
      this.username = username;
    }

    StreamingUser.fromJson(Map<String, dynamic> json)
        : id = json['id'] as String,
          username = json['username'] as String;

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'username': username,
      };
}