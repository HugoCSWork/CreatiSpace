part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.initialized(Option<UserProfileData> initialItemOption) =
  _Initialized;
  const factory ProfileFormEvent.usernameChanged(String username) = _UsernameChanged;
  const factory ProfileFormEvent.backgroundImageURLChanged(String backgroundImageURL) = _BackgroundImageURLChanged;
  const factory ProfileFormEvent.profileImageURLChanged(String profileImageURL) = _ProfileImageURL;
  const factory ProfileFormEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory ProfileFormEvent.saved() = _Saved;
}