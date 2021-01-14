import 'package:creatispace/domain/auth/user/user.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  CurrentUser toDomain() {
    return CurrentUser(
      id: UniqueId.fromUniqueString(uid),
      emailVerified: emailVerified,
    );
  }
}