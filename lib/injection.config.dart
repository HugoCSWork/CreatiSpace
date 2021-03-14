// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'app/auth/auth_bloc.dart' as _i56;
import 'app/auth/forgotten_password/forgotten_password_bloc.dart' as _i60;
import 'app/auth/is_verified/is_verified_bloc.dart' as _i27;
import 'app/auth/payment_verified/payment_verified_bloc.dart' as _i40;
import 'app/auth/sign_in/sign_in_bloc.dart' as _i48;
import 'app/auth/sign_up/sign_up_bloc.dart' as _i49;
import 'app/following_followers/followers/followers_bloc.dart' as _i58;
import 'app/following_followers/following/following_bloc.dart' as _i59;
import 'app/item/item_actor/item_actor_bloc.dart' as _i28;
import 'app/item/item_form/item_form_bloc.dart' as _i29;
import 'app/item/item_home_watcher/item_home_watcher_bloc.dart' as _i30;
import 'app/item/item_watcher/item_watcher_bloc.dart' as _i31;
import 'app/payment_confirmation/payment_confirmation_bloc.dart' as _i33;
import 'app/payment_details/payment_details_form/payment_details_form_bloc.dart'
    as _i34;
import 'app/payment_details/payment_item_details/payment_item_details_bloc.dart'
    as _i36;
import 'app/payment_details/payment_receiver/payment_receiver_bloc.dart'
    as _i37;
import 'app/payment_details/payment_sender/payment_sender_bloc.dart' as _i38;
import 'app/payment_details/payment_workshop/payment_workshop_bloc.dart'
    as _i41;
import 'app/payment_form/payment_form_bloc.dart' as _i35;
import 'app/payment_setup/payment_setup_bloc.dart' as _i39;
import 'app/profile/profile_actor/profile_actor_bloc.dart' as _i42;
import 'app/profile/profile_form/profile_form_bloc.dart' as _i43;
import 'app/profile/profile_information_watcher/profile_information_watcher_bloc.dart'
    as _i44;
import 'app/search/item/search_item_bloc.dart' as _i45;
import 'app/search/user/search_user_bloc.dart' as _i46;
import 'app/search/workshop/search_workshop_bloc.dart' as _i47;
import 'app/streaming/end_stream/end_stream_bloc.dart' as _i57;
import 'app/streaming/join_stream/join_stream_bloc.dart' as _i32;
import 'app/streaming/start_stream/start_stream_bloc.dart' as _i50;
import 'app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart'
    as _i51;
import 'app/user_messaging/user_conversation_watcher/user_conversation_bloc.dart'
    as _i52;
import 'app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart'
    as _i53;
import 'app/workshop/workshop_form/workshop_form_bloc.dart' as _i54;
import 'app/workshop/workshop_watcher/workshop_watcher_bloc.dart' as _i55;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/following_followers/i_following_followers_facade.dart' as _i9;
import 'domain/items/i_item_facade.dart' as _i11;
import 'domain/payment_details/i_payment_details_facade.dart' as _i13;
import 'domain/payment_setup/i_payment_setup_facade.dart' as _i15;
import 'domain/profile/i_profile_facade.dart' as _i17;
import 'domain/search/i_search_facade.dart' as _i19;
import 'domain/streaming/i_streaming_facade.dart' as _i21;
import 'domain/user_messaging/IUserFacade.dart' as _i23;
import 'domain/workshop/i_workshop_facade.dart' as _i25;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i61;
import 'infrastructure/following_followers/following_followers_repository.dart'
    as _i10;
import 'infrastructure/items/item_repository.dart' as _i12;
import 'infrastructure/messaging/messaging_repository.dart' as _i24;
import 'infrastructure/payment_details/payment_details_repository.dart' as _i14;
import 'infrastructure/payment_setup/payment_setup_repository.dart' as _i16;
import 'infrastructure/profile/profile_repository.dart' as _i18;
import 'infrastructure/search/search_repository.dart' as _i20;
import 'infrastructure/streaming/streaming_repository.dart' as _i22;
import 'infrastructure/workshop/workshop_repository.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firestoreStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IFollowingFollowerFacade>(
      () => _i10.FollowingFollowerRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IItemFacade>(() => _i12.ItemRepository(
      get<_i4.FirebaseFirestore>(),
      get<_i5.FirebaseStorage>(),
      get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i13.IPaymentDetailsFacade>(
      () => _i14.PaymentDetailsRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i15.IPaymentSetupFacade>(() => _i16.PaymentSetupRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i17.IProfileFacade>(() => _i18.ProfileRepository(
      get<_i4.FirebaseFirestore>(),
      get<_i5.FirebaseStorage>(),
      get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i19.ISearchFacade>(() => _i20.SearchRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i21.IStreamingFacade>(
      () => _i22.StreamingRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i23.IUserFacade>(() => _i24.UserMessagesRepository(
      get<_i4.FirebaseFirestore>(),
      get<_i5.FirebaseStorage>(),
      get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i25.IWorkshopFacade>(
      () => _i26.WorkshopRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i27.IsVerifiedBloc>(
      () => _i27.IsVerifiedBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i28.ItemActorBloc>(
      () => _i28.ItemActorBloc(get<_i11.IItemFacade>()));
  gh.factory<_i29.ItemFormBloc>(
      () => _i29.ItemFormBloc(get<_i11.IItemFacade>()));
  gh.factory<_i30.ItemHomeWatcherBloc>(
      () => _i30.ItemHomeWatcherBloc(get<_i11.IItemFacade>()));
  gh.factory<_i31.ItemWatcherBloc>(
      () => _i31.ItemWatcherBloc(get<_i11.IItemFacade>()));
  gh.factory<_i32.JoinStreamBloc>(
      () => _i32.JoinStreamBloc(get<_i21.IStreamingFacade>()));
  gh.factory<_i33.PaymentConfirmationBloc>(
      () => _i33.PaymentConfirmationBloc(get<_i15.IPaymentSetupFacade>()));
  gh.factory<_i34.PaymentDetailsFormBloc>(
      () => _i34.PaymentDetailsFormBloc(get<_i13.IPaymentDetailsFacade>()));
  gh.factory<_i35.PaymentFormBloc>(
      () => _i35.PaymentFormBloc(get<_i15.IPaymentSetupFacade>()));
  gh.factory<_i36.PaymentItemDetailsBloc>(
      () => _i36.PaymentItemDetailsBloc(get<_i13.IPaymentDetailsFacade>()));
  gh.factory<_i37.PaymentReceiverBloc>(
      () => _i37.PaymentReceiverBloc(get<_i13.IPaymentDetailsFacade>()));
  gh.factory<_i38.PaymentSenderBloc>(
      () => _i38.PaymentSenderBloc(get<_i13.IPaymentDetailsFacade>()));
  gh.factory<_i39.PaymentSetupBloc>(
      () => _i39.PaymentSetupBloc(get<_i15.IPaymentSetupFacade>()));
  gh.factory<_i40.PaymentVerifiedBloc>(
      () => _i40.PaymentVerifiedBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i41.PaymentWorkshopBloc>(
      () => _i41.PaymentWorkshopBloc(get<_i13.IPaymentDetailsFacade>()));
  gh.factory<_i42.ProfileActorBloc>(
      () => _i42.ProfileActorBloc(get<_i17.IProfileFacade>()));
  gh.factory<_i43.ProfileFormBloc>(
      () => _i43.ProfileFormBloc(get<_i17.IProfileFacade>()));
  gh.factory<_i44.ProfileInformationWatcherBloc>(
      () => _i44.ProfileInformationWatcherBloc(get<_i17.IProfileFacade>()));
  gh.factory<_i45.SearchItemBloc>(
      () => _i45.SearchItemBloc(get<_i19.ISearchFacade>()));
  gh.factory<_i46.SearchUserBloc>(
      () => _i46.SearchUserBloc(get<_i19.ISearchFacade>()));
  gh.factory<_i47.SearchWorkshopBloc>(
      () => _i47.SearchWorkshopBloc(get<_i19.ISearchFacade>()));
  gh.factory<_i48.SignInFormBloc>(
      () => _i48.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i49.SignUpFormBloc>(
      () => _i49.SignUpFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i50.StartStreamBloc>(
      () => _i50.StartStreamBloc(get<_i21.IStreamingFacade>()));
  gh.factory<_i51.StreamConversationWatcherBloc>(
      () => _i51.StreamConversationWatcherBloc(get<_i21.IStreamingFacade>()));
  gh.factory<_i52.UserConversationBloc>(
      () => _i52.UserConversationBloc(get<_i23.IUserFacade>()));
  gh.factory<_i53.UserMessagingWatcherBloc>(
      () => _i53.UserMessagingWatcherBloc(get<_i23.IUserFacade>()));
  gh.factory<_i54.WorkshopFormBloc>(
      () => _i54.WorkshopFormBloc(get<_i25.IWorkshopFacade>()));
  gh.factory<_i55.WorkshopWatcherBloc>(
      () => _i55.WorkshopWatcherBloc(get<_i25.IWorkshopFacade>()));
  gh.factory<_i56.AuthBloc>(() => _i56.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i57.EndStreamBloc>(
      () => _i57.EndStreamBloc(get<_i21.IStreamingFacade>()));
  gh.factory<_i58.FollowersBloc>(
      () => _i58.FollowersBloc(get<_i9.IFollowingFollowerFacade>()));
  gh.factory<_i59.FollowingBloc>(
      () => _i59.FollowingBloc(get<_i9.IFollowingFollowerFacade>()));
  gh.factory<_i60.ForgottenPasswordBloc>(
      () => _i60.ForgottenPasswordBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i61.FirebaseInjectableModule {}
