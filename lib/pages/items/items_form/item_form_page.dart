import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/payment_verified/payment_verified_bloc.dart';
import 'package:creatispace/app/item/item_form/item_form_bloc.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_form/misc/todo_item_presentation_classes.dart';
import 'package:creatispace/pages/items/items_form/widgets/description_field_widget.dart';
import 'package:creatispace/pages/items/items_form/widgets/add_image_field_widget.dart';
import 'package:creatispace/pages/items/items_form/widgets/image_list_widget.dart';
import 'package:creatispace/pages/items/items_form/widgets/name_field_widget.dart';
import 'package:creatispace/pages/items/items_form/widgets/preview_or_price_widget.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ItemFormPage extends StatelessWidget {
  final Item editedItem;

  const ItemFormPage({Key key, @required this.editedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(
          create: (context) => getIt<ItemFormBloc>()
            ..add(ItemFormEvent.initialized(optionOf(editedItem))),
        ),
        BlocProvider(
            create: (context) => getIt<PaymentVerifiedBloc>()
                  ..add(PaymentVerifiedEvent.paymentVerifiedCheckRequested()),
        ),
      ],
      child: BlocConsumer<ItemFormBloc, ItemFormState>(
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
            return Stack(
              children: <Widget>[
                const ItemFormPageScaffold(),
                SavingInProgress(isSaving: state.isSaving)
              ],
            );
          }),
    );
  }
}

class SavingInProgress extends StatelessWidget {
  final bool isSaving;
  final String message;

  const SavingInProgress({Key key,
    @required this.isSaving, this.message = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.6) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                  scale: 2, child: const CircularProgressIndicator()),
              const SizedBox(height: 40),
              Text(message.isNotEmpty ? message : 'Saving',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.white,
                        fontSize: 25,
                      )),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemFormPageScaffold extends StatelessWidget {
  const ItemFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ItemFormBloc, ItemFormState>(
          buildWhen: (prev, current) => prev.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit Item' : 'Create Item');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                context.read<ItemFormBloc>().add(const ItemFormEvent.saved());
              }),
        ],
      ),
      body: BlocBuilder<ItemFormBloc, ItemFormState>(
        buildWhen: (previous, current) =>
            previous.showErrorMessages != current.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => ImageItems(),
            child: Form(
                autovalidateMode: state.showErrorMessages,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const ItemNameField(),
                      const ItemDescriptionField(),
                      ItemList(),
                      const AddItemTile(),
                      const SizedBox(height: 10),
                      const PreviewOrPay(),
                      const SizedBox(height: 60),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
