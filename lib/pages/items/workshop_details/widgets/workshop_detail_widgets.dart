

import 'package:flutter/material.dart';

Widget workshopDetailsName({ String name }) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextFormField(
      key: Key('workshop_details_name'),
      initialValue: name,
      decoration: const InputDecoration(
          labelText: 'Workshop Name',
          filled: true,
          errorMaxLines: 5),
      readOnly: true,
    ),
  );
}


Widget workshopDetailsDescription({ String description }) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextFormField(
      initialValue: description,
      decoration: const InputDecoration(
          labelText: 'Description',
          filled: true,
          errorMaxLines: 5),
      maxLines: 5,
      readOnly: true,
    ),
  );
}

Widget workshopDetailsRequirements({ String requirements }) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextFormField(
      initialValue: requirements,
      decoration: const InputDecoration(
          labelText: 'Requirements',
          filled: true,
          errorMaxLines: 5),
      maxLines: 5,
      readOnly: true,
    ),
  );
}

Widget workshopDetailsDate({ String date }) {
  return Expanded(
    child: Container(
      padding:
      const EdgeInsets.symmetric(vertical: 8.0),
      child:
      TextFormField(
        initialValue: date,
        decoration: const InputDecoration(
            labelText: 'Date',
            filled: true,
            errorMaxLines: 5),
        readOnly: true,
      ),
    ),
  );
}

Widget workshopDetailsTime({ String time }) {
  return  Expanded(
    child: Container(
      padding:
      const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: time,
        decoration: const InputDecoration(
            labelText: 'Time',
            filled: true,
            errorMaxLines: 5),
        readOnly: true,
      ),
    ),
  );
}

Widget workshopDetailsDuration({ double duration }) {
  return Expanded(
    child: Container(
      padding:
      const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: '${duration.toStringAsFixed(0)} Minutes',
        decoration: const InputDecoration(
            labelText: 'Duration',
            filled: true,
            errorMaxLines: 5),
        readOnly: true,
      ),
    ),
  );
}

Widget workshopDetailsPrice({ double price }) {
  return  Expanded(
    child: Container(
      padding:
      const EdgeInsets.symmetric(vertical: 8.0),
      child:
      TextFormField(
        initialValue: '£${price.toStringAsFixed(2)}',
        decoration: const InputDecoration(
            labelText: 'Price',
            filled: true,
            errorMaxLines: 5),
        readOnly: true,
      ),
    ),
  );
}