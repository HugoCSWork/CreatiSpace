import 'package:creatispace/app/auth/auth_bloc.dart';
import 'package:creatispace/app/auth/payment_verified/payment_verified_bloc.dart';
import 'package:creatispace/pages/items/items_overview/widgets/items/item_overview_body_wdget.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class ItemsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentVerifiedBloc, PaymentVerifiedState>(
              builder: (context, state) {
                return state.map(
                    initial: (_) => Container(),
                    authenticated: (_) {
                      return Column(
                        children: [
                          ItemOverviewBody(),
                        ],
                      );
                    },
                    unauthenticated: (_) {
                      return Column(
                        children: [
                          Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: FlatButton(
                                  onPressed: () => ExtendedNavigator.of(context).push(Routes.paymentStepper),
                                  child: Text("Become a Seller"),
                                  color: Colors.blue[200],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.blue[200])
                                  ),
                                ),
                              ),
                          ),
                          ItemOverviewBody()
                        ],
                      );
                    }
                  );
                },
      );
  }
}
