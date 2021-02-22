import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:creatispace/pages/items/items_form/misc/item_image_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class DocumentImageField extends StatelessWidget {
  ClipRRect _displayLocalImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(url, fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Document"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Material(
            elevation: 3,
            animationDuration: const Duration(milliseconds: 50),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: ListTile(
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 80,
                    minHeight: 100,
                    maxWidth: 80,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      final imageUrl = await getImage();
                      context
                          .read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.documentUrlChanged(imageUrl));
                    },
                    child: context.watch<PaymentSetupBloc>().state.paymentSetup
                        .documentUrlImage.value.getOrElse(() => 'no_image') != 'no_image'
                        ? _displayLocalImage(context
                            .watch<PaymentSetupBloc>()
                            .state
                            .paymentSetup
                            .documentUrlImage
                            .value
                            .getOrElse(() => '')
                          )
                        : const Icon(Icons.image)

                  ),
                ),
                title: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Document Description',
                    counterText: '',
                    border: InputBorder.none,
                  ),
                  initialValue: context
                      .watch<PaymentSetupBloc>()
                      .state
                      .paymentSetup
                      .documentNameImage
                      .value
                      .getOrElse(() => ''),
                  onChanged: (value) => context
                      .read<PaymentSetupBloc>()
                      .add(PaymentSetupEvent.documentNameChanged(value)),
                  validator: (_) =>
                      context.read<PaymentSetupBloc>().state.paymentSetup.documentUrlImage.value.fold(
                            (failure) => failure.maybeMap(
                          paymentSetup: (value) => value.f.maybeMap(
                            emptyField: (_) => 'Please select an image',
                            orElse: () => null,
                          ),
                          orElse: () => null,
                        ),
                            (_) => null,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class PassportImageField extends StatelessWidget {
  ClipRRect _displayLocalImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(url, fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Passport"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Material(
            elevation: 3,
            animationDuration: const Duration(milliseconds: 50),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: ListTile(
                leading: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 80,
                    minHeight: 100,
                    maxWidth: 80,
                  ),
                  child: GestureDetector(
                      onTap: () async {
                        final imageUrl = await getImage();

                        context
                            .read<PaymentSetupBloc>()
                            .add(PaymentSetupEvent.passportUrlChanged(imageUrl));
                      },
                      child: context.watch<PaymentSetupBloc>().state.paymentSetup
                          .passportUrlImage.value.getOrElse(() => 'no_image') != 'no_image'
                          ? _displayLocalImage(context
                          .watch<PaymentSetupBloc>()
                          .state
                          .paymentSetup
                          .passportUrlImage
                          .value
                          .getOrElse(() => '')
                      )
                          : const Icon(Icons.image)

                  ),
                ),
                title: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Passport Description',
                    counterText: '',
                    border: InputBorder.none,
                  ),
                  initialValue: context
                      .watch<PaymentSetupBloc>()
                      .state
                      .paymentSetup
                      .passportNameImage
                      .value
                      .getOrElse(() => ''),
                  onChanged: (value) => context
                      .read<PaymentSetupBloc>()
                      .add(PaymentSetupEvent.passportNameChanged(value)),
                  validator: (_) =>
                      context.read<PaymentSetupBloc>().state.paymentSetup.passportUrlImage.value.fold(
                            (failure) => failure.maybeMap(
                          paymentSetup: (value) => value.f.maybeMap(
                            emptyField: (_) => 'Please select an image',
                            orElse: () => null,
                          ),
                          orElse: () => null,
                        ),
                            (_) => null,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class PassportVerifyTermsAndService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: FormField<bool>(
        builder: (state) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Checkbox(
                      value: context.read<PaymentSetupBloc>().state.paymentSetup.termsAndService.value.getOrElse(() => false),
                      onChanged: (value) {
                        context
                            .read<PaymentSetupBloc>()
                            .add(PaymentSetupEvent.termsAndServiceChanged(value));
                      }),
                  Text('Accept terms and conditions'),
                ],
              ),
//display error in matching theme
              Text(
                state.errorText ?? '',
                style: TextStyle(
                  color: Theme.of(context).errorColor,
                ),
              )
            ],
          );
        },
//output from validation will be displayed in state.errorText (above)
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.termsAndService.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  uncheckedTermsAndService: (_) => 'Please accept terms and conditions',
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
                  (_) => null,
            ),
      ),
    );
  }
}