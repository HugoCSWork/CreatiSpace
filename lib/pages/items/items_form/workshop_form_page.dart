import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/workshop/workshop_form/workshop_form_bloc.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/items/items_form/workshop/workshop_widgets.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkshopForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorkshopFormBloc>(
        create: (context) => getIt<WorkshopFormBloc>(),
        child: BlocConsumer<WorkshopFormBloc, WorkshopFormState>(
        listenWhen: (prev, current) =>
        prev.saveFailureOrSuccessOption !=
        current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold((failure) {
                FlushbarHelper.createError(
                    message: failure.map(
                        unexpected: (_) =>
                        'Unexpected Error occurred, contact support.',
                        insufficientPermissions: (_) =>
                        'Insufficient Permissions.',
                        notFound: (_) =>
                        'Could not update this item. If this item has not been deleted contact support')).show(
                    context);
              },
                      (_) => ExtendedNavigator.of(context).popUntil(
                        (route) =>
                    route.settings.name ==
                        Routes.navigationBar,
                  )));
        },
        buildWhen: (prev, current) => prev.isSaving != current.isSaving,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                title: Text("Create Workshop Event"),
                actions: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.check),
                      onPressed: () {
                        context.read<WorkshopFormBloc>().add(const WorkshopFormEvent.saved());
                      }),
                ],
            ),
            body: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Form(
                    autovalidateMode: state.showErrorMessages,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Once confirmed you cannot modify the event. Ensure everything is filled in correctly.", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),)),
                        ),
                        WorkshopNameField(),
                        WorkshopDescriptionField(),
                        WorkshopRequirementsField(),
                        WorkshopCostField(),
                        WorkshopDurationField(),
                        WorkshopDateField(initialValue: DateTime.now().toLocal().toString().split(' ')[0])
                      ],
                    )
                  ),
                  SavingInProgress(isSaving: state.isSaving)
                ],
              ),
            ),
          );
        }),
    );
  }
}
