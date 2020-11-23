// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:cloud_firestore/cloud_firestore.dart';
// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'app/auth/auth_bloc.dart';
import 'app/auth/forgotten_password/forgotten_password_bloc.dart';
import 'app/auth/sign_in/sign_in_bloc.dart';
import 'app/auth/sign_up/sign_up_bloc.dart';
import 'app/item/item_actor/item_actor_bloc.dart';
import 'app/item/item_form/item_form_bloc.dart';
import 'app/item/item_watcher/item_watcher_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/items/i_item_facade.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/items/item_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firestoreStorage);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.lazySingleton<IItemFacade>(
      () => ItemRepository(get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.factory<ItemActorBloc>(() => ItemActorBloc(get<IItemFacade>()));
  gh.factory<ItemFormBloc>(() => ItemFormBloc(get<IItemFacade>()));
  gh.factory<ItemWatcherBloc>(() => ItemWatcherBloc(get<IItemFacade>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<SignUpFormBloc>(() => SignUpFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<ForgottenPasswordBloc>(
      () => ForgottenPasswordBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}