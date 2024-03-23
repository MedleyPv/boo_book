import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    @JsonKey(includeToJson: false) @Default('') String uid,
    @Default('') String nickname,
    @Default('') String displayName,
    @Default('') String description,
    @Default('') String email,
    DateTime? birthday,
    @Default('') String imageUrl,
  }) = _UserProfile;

  factory UserProfile.fromFirebaseUser(User user) {
    final displayName = user.displayName ?? '';
    final nickname = displayName.toLowerCase().replaceAll(' ', '');

    return UserProfile(
      uid: user.uid,
      nickname: '@$nickname',
      displayName: displayName,
      email: user.email ?? '',
      imageUrl: user.photoURL ?? '',
    );
  }

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
