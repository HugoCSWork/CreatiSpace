import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/purchase/payment_form/payment_form_builder.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentFormScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentFormBloc>()
        ..add(PaymentFormEvent.started()),
      child: BlocConsumer<PaymentFormBloc, PaymentFormState>(
        listenWhen: (prev, curr) =>
          prev.saveFailureOrSuccessOption != curr.saveFailureOrSuccessOption,
        listener:  (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                FlushbarHelper.createError(
                    message: failure.map(
                        unexpected: (_) =>
                          'Unexpected Error occurred, contact support.',
                        errorMakingPayment: (_) => 'Error making payment '
                            'try again later or double check your details',
                        cancelled: (_) => 'Cancelled'
                    )
                  ).show(context);
                },
                (_) => null
                //     ExtendedNavigator.of(context).popUntil(
                //   (route) => route.settings.name == Routes.navigationBar,
                // )
              )
          );
        },
        buildWhen: (prev, curr) => prev.isSaving != curr.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              Scaffold(
                appBar: AppBar(title: Text("Make Payment")),
                body: PaymentFormBuilder(),
              ),
              SavingInProgress(isSaving: state.isSaving)
            ],
          );
        },
      ),
    );
  }
}
