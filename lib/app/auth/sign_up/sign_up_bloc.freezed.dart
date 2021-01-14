// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

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
  UsernameChanged usernameChanged(String pass) {
    return UsernameChanged(
      pass,
    );
  }

// ignore: unused_element
  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String pass),
    @required TResult usernameChanged(String pass),
    @required TResult registerWithEmailAndPasswordPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String pass),
    TResult usernameChanged(String pass),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
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
    extends _$SignUpFormEventCopyWithImpl<$Res>
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
    return 'SignUpFormEvent.emailChanged(email: $email)';
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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String pass),
    @required TResult usernameChanged(String pass),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String pass),
    TResult usernameChanged(String pass),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpFormEvent {
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
    extends _$SignUpFormEventCopyWithImpl<$Res>
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
    return 'SignUpFormEvent.passwordChanged(pass: $pass)';
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
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String pass),
    @required TResult usernameChanged(String pass),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordChanged(pass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String pass),
    TResult usernameChanged(String pass),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpFormEvent {
  const factory PasswordChanged(String pass) = _$PasswordChanged;

  String get pass;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String pass});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object pass = freezed,
  }) {
    return _then(UsernameChanged(
      pass == freezed ? _value.pass : pass as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.pass) : assert(pass != null);

  @override
  final String pass;

  @override
  String toString() {
    return 'SignUpFormEvent.usernameChanged(pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.pass, pass) ||
                const DeepCollectionEquality().equals(other.pass, pass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pass);

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String pass),
    @required TResult usernameChanged(String pass),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return usernameChanged(pass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String pass),
    TResult usernameChanged(String pass),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpFormEvent {
  const factory UsernameChanged(String pass) = _$UsernameChanged;

  String get pass;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String pass),
    @required TResult usernameChanged(String pass),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String pass),
    TResult usernameChanged(String pass),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult usernameChanged(UsernameChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(usernameChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult usernameChanged(UsernameChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignUpFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

// ignore: unused_element
  _SignUpFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required Username username,
      @required AutovalidateMode showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess}) {
    return _SignUpFormState(
      emailAddress: emailAddress,
      password: password,
      username: username,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  EmailAddress get emailAddress;
  Password get password;
  Username get username;
  AutovalidateMode get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthErrorFailure, Unit>> get authFailureOrSuccess;

  $SignUpFormStateCopyWith<SignUpFormState> get copyWith;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Username username,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object username = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
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
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Username username,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object username = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SignUpFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
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
class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.username,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccess})
      : assert(emailAddress != null),
        assert(password != null),
        assert(username != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccess != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Username username;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignUpFormState(emailAddress: $emailAddress, password: $password, username: $username, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
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
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              Username username,
          @required
              AutovalidateMode showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess}) =
      _$_SignUpFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Username get username;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthErrorFailure, Unit>> get authFailureOrSuccess;
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith;
}
