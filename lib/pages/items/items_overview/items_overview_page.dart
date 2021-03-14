import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/is_verified/is_verified_bloc.dart';
import 'package:creatispace/app/auth/payment_verified/payment_verified_bloc.dart';
import 'package:creatispace/app/item/item_actor/item_actor_bloc.dart';
import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/app/workshop/workshop_form/workshop_form_bloc.dart';
import 'package:creatispace/app/workshop/workshop_watcher/workshop_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_overview/items_builder.dart';
import 'package:creatispace/pages/items/items_overview/widgets/items/item_switch.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsOverviewPage extends StatefulWidget {
  @override
  _ItemsOverviewPageState createState() => _ItemsOverviewPageState();
}

class _ItemsOverviewPageState extends State<ItemsOverviewPage> {

  bool itemOrEvent = false;

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
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
          ),
          BlocProvider<WorkshopFormBloc>(
            create: (context) => getIt<WorkshopFormBloc>()
          ),
          BlocProvider<WorkshopWatcherBloc>(
            create: (context) => getIt<WorkshopWatcherBloc>()
              ..add(WorkshopWatcherEvent.watchAllWorkshopsStarted()),
          )
        ],
        child: MultiBlocListener(
          listeners: [
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
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Listings'),
              actions: <Widget>[
                ItemSwitch(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                itemOrEvent
                ? ExtendedNavigator.of(context).pushWorkshopForm()
                : ExtendedNavigator.of(context).pushItemFormPage(editedItem: null);
              },
              child: const Icon(Icons.add),
            ),
            body: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: Text(
                          "Items",
                          style: TextStyle(
                              fontWeight: !itemOrEvent
                                  ? FontWeight.bold
                                  : FontWeight.normal
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            itemOrEvent = false;
                          });
                        },
                      ),
                      Container(
                        height: 30,
                        width: 1.3,
                        color: Colors.blue[200],
                      ),
                      TextButton(
                        child: Text(
                            "Workshops",
                            style: TextStyle(
                                fontWeight: itemOrEvent
                                    ? FontWeight.bold
                                    : FontWeight.normal
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            itemOrEvent = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(child: ItemOverviewBuilder(itemOrWorkshop: itemOrEvent)),
              ],
            ),
          ),
        ),
    );
  }
}
