import 'package:creatispace/app/auth/auth_bloc.dart';
import 'package:creatispace/app/auth/is_verified/is_verified_bloc.dart';
import 'package:creatispace/app/auth/payment_verified/payment_verified_bloc.dart';
import 'package:creatispace/app/item/item_actor/item_actor_bloc.dart';
import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_overview/items_builder.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class ItemsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemWatcherBloc>(
          create: (context) => getIt<ItemWatcherBloc>()
            ..add(const ItemWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<ItemActorBloc>(
          create: (context) => getIt<ItemActorBloc>(),
        ),
        BlocProvider<IsVerifiedBloc>(
            create: (context) => getIt<IsVerifiedBloc>()
                ..add(IsVerifiedEvent.verifiedCheckRequested()),
        ),
        BlocProvider<PaymentVerifiedBloc>(
          create: (context) => getIt<PaymentVerifiedBloc>()
            ..add(PaymentVerifiedEvent.paymentVerifiedCheckRequested()),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) {
                  context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
                  ExtendedNavigator.of(context).replace(Routes.signInPage);
                },
                orElse: () {});
          }),
          BlocListener<ItemActorBloc, ItemActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: state.itemFailure.map(
                        unexpected: (_) => 'Unexpected Error',
                        insufficientPermissions: (_) =>
                            'Insufficent permissions',
                        notFound: (_) => 'Impossible Error, please contact'),
                  ).show(context);
                },
                orElse: () {});
          }),
        ],
        child: ItemOverviewBuilder()
      ),
    );
  }
}
