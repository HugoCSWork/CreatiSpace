import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:creatispace/app/workshop/workshop_form/workshop_form_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkshopNameField extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Name',
            alignLabelWithHint: true,
            counterText: '',
          ),
          maxLength: 100,
          onChanged: (value) => context.read<WorkshopFormBloc>().add(WorkshopFormEvent.nameChanged(value)),
          validator: (_) => context.read<WorkshopFormBloc>()
              .state.item.workshopName.value
              .fold(
                  (failure) => failure.maybeMap(
                workshop: (value) => value.i.maybeMap(
                  invalidWorkshopName: (_) => 'Length of name must be between 5-30',
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
                  (_) => null
          ),
        ),
    );
  }
}


class WorkshopDescriptionField extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(
          labelText: 'Description',
          alignLabelWithHint: true,
          counterText: '',
        ),
        maxLength: 100,
        maxLines: 5,
        onChanged: (value) => context.read<WorkshopFormBloc>().add(WorkshopFormEvent.descriptionChanged(value)),
        validator: (_) => context.read<WorkshopFormBloc>()
            .state.item.workshopDescription.value
            .fold(
                (failure) => failure.maybeMap(
              workshop: (value) => value.i.maybeMap(
                invalidWorkshopDescription: (_) => 'Length of name must be between 5-100',
                orElse: () => null,
              ),
              orElse: () => null,
            ),
                (_) => null
        ),
      ),
    );
  }
}


class WorkshopRequirementsField extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(
          labelText: 'Requirements',
          alignLabelWithHint: true,
          counterText: '',
        ),
        maxLength: 100,
        maxLines: 5,
        onChanged: (value) => context.read<WorkshopFormBloc>().add(WorkshopFormEvent.requirementsChanged(value)),
        validator: (_) => context.read<WorkshopFormBloc>()
            .state.item.workshopRequirements.value
            .fold(
                (failure) => failure.maybeMap(
              workshop: (value) => value.i.maybeMap(
                invalidWorkshopRequirements: (_) => 'Length of name must be between 5-100',
                orElse: () => null,
              ),
              orElse: () => null,
            ),
                (_) => null
        ),
      ),
    );
  }
}

class WorkshopCostField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textEditingController,
        inputFormatters: [CurrencyTextInputFormatter(symbol: '£')],
        decoration: const InputDecoration(
          labelText: 'Cost',
          alignLabelWithHint: true,
          counterText: '',
        ),
        maxLength: 10,
        onChanged: (value) => context.read<WorkshopFormBloc>().add(WorkshopFormEvent.priceChanged(double.parse(value.substring(1, value.length)))),
        validator: (_) => context.read<WorkshopFormBloc>()
            .state.item.workshopPrice.value
            .fold(
                (failure) => failure.maybeMap(
                  workshop: (value) => value.i.maybeMap(
                    invalidWorkshopPrice: (_) => "Invalid Price cannot exceed £99,999,99",
                orElse: () => null,
              ),
              orElse: () => null,
            ),
                (_) => null
        ),
      ),
    );
  }
}

class WorkshopDurationField extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 8.0),
      margin: const EdgeInsets.only(
          left: 8, top: 8, right: 8),
      child:
      DropdownButtonFormField<String>(
        items: ["30 Minutes", "60 Minutes", "90 Minutes", "120 Minutes"]
            .map((label) => DropdownMenuItem(
          child: Text(label),
          value: label,
        ))
            .toList(),
        hint: Text("Duration"),
        decoration: const InputDecoration(
          labelText: 'Duration',
          alignLabelWithHint: true,
          counterText: '',
        ),
        onTap: () {
          FocusManager.instance.primaryFocus.unfocus();
        },
        onChanged: (value) {
          context.read<WorkshopFormBloc>().add(WorkshopFormEvent.durationChanged(double.parse(value.split(" ")[0])));
        },

      ),
    );
  }
}



class WorkshopDateField extends StatefulWidget {

  final String initialValue;

  const WorkshopDateField({Key key, @required this.initialValue})
      : super(key: key);

  @override
  _WorkshopDateFieldState createState() => _WorkshopDateFieldState(initialValue);
}

class _WorkshopDateFieldState extends State<WorkshopDateField> {
  final String initialValue;
  DateTime currentDate = DateTime.now();
  TimeOfDay currentTime = TimeOfDay.now();
  TextEditingController _date = TextEditingController();

  _WorkshopDateFieldState(this.initialValue){
    _date.text = this.initialValue;
  }

  Future<String> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != currentDate) {
      setState(() {
        currentDate = picked;
        _date.value = TextEditingValue(text: picked.toLocal().toString().split(' ')[0]);
      });
      return _date.value.text;
    }
    return currentDate.toString();
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () async {
        String date = await _selectDate(context);
        context
            .read<WorkshopFormBloc>()
            .add(WorkshopFormEvent.dateChanged(date));
        FocusManager.instance.primaryFocus.unfocus();
      },
      child: AbsorbPointer(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: TextFormField(
              controller: _date,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'Date of Event',
                labelText: 'Event Date',
                prefixIcon: Icon(
                  Icons.dialpad,
                ),
              ),
              validator: (_) => context.read<WorkshopFormBloc>()
                  .state.item.workshopDate.value
                  .fold(
                      (failure) => failure.maybeMap(
                    workshop: (value) => value.i.maybeMap(
                      invalidWorkshopDate: (_) => 'Date must be after today',
                      orElse: () => null,
                    ),
                    orElse: () => null,
                  ),
                      (_) => null
              ),
            ),
          ),
        ),
      );
  }
}


class WorkshopTimeField extends StatefulWidget {

  @override
  _WorkshopTimeFieldState createState() => _WorkshopTimeFieldState();
}

class _WorkshopTimeFieldState extends State<WorkshopTimeField> {
  TimeOfDay currentTime = TimeOfDay.now();
  TextEditingController _time = TextEditingController();

  _WorkshopTimeFieldState(){
    _time.text = '${currentTime.hour.toString()}:${currentTime.minute.toString()}';
  }

  Future<String> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: currentTime,
    );
    if (picked != null && picked != currentTime) {
      setState(() {
        currentTime = picked;
        _time.value = TextEditingValue(text: '${currentTime.hour.toString()}:${currentTime.minute.toString()}');
      });
      return _time.value.text;
    }
    return currentTime.toString();
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () async {
        String date = await _selectTime(context);
        context
            .read<WorkshopFormBloc>()
            .add(WorkshopFormEvent.timeChanged(date));
        FocusManager.instance.primaryFocus.unfocus();
      },
      child: AbsorbPointer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: TextFormField(
            controller: _time,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              hintText: 'Time of Event',
              labelText: 'Event Time',
              prefixIcon: Icon(
                Icons.dialpad,
              ),
            ),
            validator: (_) => context.read<WorkshopFormBloc>()
                .state.item.workshopTime.value
                .fold(
                    (failure) => failure.maybeMap(
                  workshop: (value) => value.i.maybeMap(
                    invalidWorkshopTime: (_) => 'Time must be valid',
                    orElse: () => null,
                  ),
                  orElse: () => null,
                ),
                    (_) => null
            ),
          ),
        ),
      ),
    );
  }
}
