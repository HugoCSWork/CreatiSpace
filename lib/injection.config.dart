// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app/auth/auth_bloc.dart';
import 'app/streaming/end_stream/end_stream_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'app/following_followers/followers/followers_bloc.dart';
import 'app/following_followers/following/following_bloc.dart';
import 'infrastructure/following_followers/following_followers_repository.dart';
import 'app/auth/forgotten_password/forgotten_password_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/following_followers/i_following_followers_facade.dart';
import 'domain/items/i_item_facade.dart';
import 'domain/payment_details/i_payment_details_facade.dart';
import 'domain/payment_setup/i_payment_setup_facade.dart';
import 'domain/profile/i_profile_facade.dart';
import 'domain/search/i_search_facade.dart';
import 'domain/streaming/i_streaming_facade.dart';
import 'domain/user_messaging/IUserFacade.dart';
import 'domain/workshop/i_workshop_facade.dart';
import 'app/auth/is_verified/is_verified_bloc.dart';
import 'app/item/item_actor/item_actor_bloc.dart';
import 'app/item/item_form/item_form_bloc.dart';
import 'app/item/item_home_watcher/item_home_watcher_bloc.dart';
import 'infrastructure/items/item_repository.dart';
import 'app/item/item_watcher/item_watcher_bloc.dart';
import 'app/streaming/join_stream/join_stream_bloc.dart';
import 'app/payment_confirmation/payment_confirmation_bloc.dart';
import 'app/payment_details/payment_details_form/payment_details_form_bloc.dart';
import 'app/payment_form/payment_form_bloc.dart';
import 'app/payment_details/payment_item_details/payment_item_details_bloc.dart';
import 'app/payment_details/payment_receiver/payment_receiver_bloc.dart';
import 'app/payment_details/payment_sender/payment_sender_bloc.dart';
import 'app/payment_setup/payment_setup_bloc.dart';
import 'infrastructure/payment_setup/payment_setup_repository.dart'
    as creatispace;
import 'infrastructure/payment_details/payment_details_repository.dart';
import 'app/auth/payment_verified/payment_verified_bloc.dart';
import 'app/payment_details/payment_workshop/payment_workshop_bloc.dart';
import 'app/profile/profile_actor/profile_actor_bloc.dart';
import 'app/profile/profile_form/profile_form_bloc.dart';
import 'app/profile/profile_information_watcher/profile_information_watcher_bloc.dart';
import 'infrastructure/profile/profile_repository.dart';
import 'app/search/item/search_item_bloc.dart';
import 'infrastructure/search/search_repository.dart';
import 'app/search/user/search_user_bloc.dart';
import 'app/search/workshop/search_workshop_bloc.dart';
import 'app/auth/sign_in/sign_in_bloc.dart';
import 'app/auth/sign_up/sign_up_bloc.dart';
import 'app/streaming/start_stream/start_stream_bloc.dart';
import 'app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart';
import 'infrastructure/streaming/streaming_repository.dart';
import 'app/user_messaging/user_conversation_watcher/user_conversation_bloc.dart';
import 'infrastructure/messaging/messaging_repository.dart';
import 'app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart';
import 'app/workshop/workshop_form/workshop_form_bloc.dart';
import 'infrastructure/workshop/workshop_repository.dart';
import 'app/workshop/workshop_watcher/workshop_watcher_bloc.dart';

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
  gh.lazySingleton<IFollowingFollowerFacade>(
      () => FollowingFollowerRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IItemFacade>(() => ItemRepository(
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
        get<FirebaseAuth>(),
      ));
  gh.lazySingleton<IPaymentDetailsFacade>(() =>
      PaymentSetupRepository(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.lazySingleton<IPaymentSetupFacade>(
      () => creatispace.PaymentSetupRepository(
            get<FirebaseFirestore>(),
            get<FirebaseStorage>(),
            get<FirebaseAuth>(),
          ));
  gh.lazySingleton<IProfileFacade>(() => ProfileRepository(
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
        get<FirebaseAuth>(),
      ));
  gh.lazySingleton<ISearchFacade>(
      () => SearchRepository(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.lazySingleton<IStreamingFacade>(
      () => StreamingRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUserFacade>(() => UserMessagesRepository(
        get<FirebaseFirestore>(),
        get<FirebaseStorage>(),
        get<FirebaseAuth>(),
      ));
  gh.lazySingleton<IWorkshopFacade>(
      () => WorkshopRepository(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.factory<IsVerifiedBloc>(() => IsVerifiedBloc(get<IAuthFacade>()));
  gh.factory<ItemActorBloc>(() => ItemActorBloc(get<IItemFacade>()));
  gh.factory<ItemFormBloc>(() => ItemFormBloc(get<IItemFacade>()));
  gh.factory<ItemHomeWatcherBloc>(
      () => ItemHomeWatcherBloc(get<IItemFacade>()));
  gh.factory<ItemWatcherBloc>(() => ItemWatcherBloc(get<IItemFacade>()));
  gh.factory<JoinStreamBloc>(() => JoinStreamBloc(get<IStreamingFacade>()));
  gh.factory<PaymentConfirmationBloc>(
      () => PaymentConfirmationBloc(get<IPaymentSetupFacade>()));
  gh.factory<PaymentDetailsFormBloc>(
      () => PaymentDetailsFormBloc(get<IPaymentDetailsFacade>()));
  gh.factory<PaymentFormBloc>(
      () => PaymentFormBloc(get<IPaymentSetupFacade>()));
  gh.factory<PaymentItemDetailsBloc>(
      () => PaymentItemDetailsBloc(get<IPaymentDetailsFacade>()));
  gh.factory<PaymentReceiverBloc>(
      () => PaymentReceiverBloc(get<IPaymentDetailsFacade>()));
  gh.factory<PaymentSenderBloc>(
      () => PaymentSenderBloc(get<IPaymentDetailsFacade>()));
  gh.factory<PaymentSetupBloc>(
      () => PaymentSetupBloc(get<IPaymentSetupFacade>()));
  gh.factory<PaymentVerifiedBloc>(
      () => PaymentVerifiedBloc(get<IAuthFacade>()));
  gh.factory<PaymentWorkshopBloc>(
      () => PaymentWorkshopBloc(get<IPaymentDetailsFacade>()));
  gh.factory<ProfileActorBloc>(() => ProfileActorBloc(get<IProfileFacade>()));
  gh.factory<ProfileFormBloc>(() => ProfileFormBloc(get<IProfileFacade>()));
  gh.factory<ProfileInformationWatcherBloc>(
      () => ProfileInformationWatcherBloc(get<IProfileFacade>()));
  gh.factory<SearchItemBloc>(() => SearchItemBloc(get<ISearchFacade>()));
  gh.factory<SearchUserBloc>(() => SearchUserBloc(get<ISearchFacade>()));
  gh.factory<SearchWorkshopBloc>(
      () => SearchWorkshopBloc(get<ISearchFacade>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<SignUpFormBloc>(() => SignUpFormBloc(get<IAuthFacade>()));
  gh.factory<StartStreamBloc>(() => StartStreamBloc(get<IStreamingFacade>()));
  gh.factory<StreamConversationWatcherBloc>(
      () => StreamConversationWatcherBloc(get<IStreamingFacade>()));
  gh.factory<UserConversationBloc>(
      () => UserConversationBloc(get<IUserFacade>()));
  gh.factory<UserMessagingWatcherBloc>(
      () => UserMessagingWatcherBloc(get<IUserFacade>()));
  gh.factory<WorkshopFormBloc>(() => WorkshopFormBloc(get<IWorkshopFacade>()));
  gh.factory<WorkshopWatcherBloc>(
      () => WorkshopWatcherBloc(get<IWorkshopFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<EndStreamBloc>(() => EndStreamBloc(get<IStreamingFacade>()));
  gh.factory<FollowersBloc>(
      () => FollowersBloc(get<IFollowingFollowerFacade>()));
  gh.factory<FollowingBloc>(
      () => FollowingBloc(get<IFollowingFollowerFacade>()));
  gh.factory<ForgottenPasswordBloc>(
      () => ForgottenPasswordBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
