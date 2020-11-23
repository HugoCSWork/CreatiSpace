// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String pass) {
    return PasswordChanged(
      pass,
    );
  }

// ignore: unused_element
  SignInWithEmailAndPasswordPressed signInEmailAndPasswordPressed() {
    return const SignInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String pass),
    @required Result signInEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String pass),
    Result signInEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String pass),
    @required Result signInEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String pass),
    Result signInEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String pass});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object pass = freezed,
  }) {
    return _then(PasswordChanged(
      pass == freezed ? _value.pass : pass as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.pass) : assert(pass != null);

  @override
  final String pass;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.pass, pass) ||
                const DeepCollectionEquality().equals(other.pass, pass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pass);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String pass),
    @required Result signInEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return passwordChanged(pass);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String pass),
    Result signInEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String pass) = _$PasswordChanged;

  String get pass;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String pass),
    @required Result signInEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String pass),
    Result signInEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInEmailAndPasswordPressed != null) {
      return signInEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInEmailAndPasswordPressed != null) {
      return signInEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

/// @nodoc
class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String pass),
    @required Result signInEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String pass),
    Result signInEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required AutovalidateMode showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  AutovalidateMode get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthErrorFailure, Unit>> get authFailureOrSuccess;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthErrorFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthErrorFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccess})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccess != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              AutovalidateMode showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthErrorFailure, Unit>> get authFailureOrSuccess;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
