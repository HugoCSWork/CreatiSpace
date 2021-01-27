import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/profile/i_profile_facade.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_form_event.dart';
part 'profile_form_state.dart';
part 'profile_form_bloc.freezed.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IProfileFacade _iProfileFacade;

  ProfileFormBloc(this._iProfileFacade)
      : super(ProfileFormState.initial());

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(
        initialized: (e) async* {
          yield e.initialItemOption.fold(
                () => state,
                (initialItem) => state.copyWith(
              item: initialItem,
              isEditing: true,
            ),
          );
        },
        usernameChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(username: ProfileName(e.username)),
            saveFailureOrSuccessOption: none(),
          );
        },
        backgroundImageURLChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(backgroundImageURL: ProfileBackgroundImageURL(e.backgroundImageURL)),
            saveFailureOrSuccessOption: none(),
          );
        },
      profileImageURLChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(profileImageURL: ProfileImageURL(e.profileImageURL)),
          saveFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(description: ProfileDescription(e.description)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ProfileErrorFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.item.failureOption.isNone()) {
            failureOrSuccess = await _iProfileFacade.update(state.item);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: AutovalidateMode.always,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
