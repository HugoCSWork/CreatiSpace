// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_setup_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentSetupDto _$_$_PaymentSetupDtoFromJson(Map<String, dynamic> json) {
  return _$_PaymentSetupDto(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    dob: json['dob'] as String,
    phoneNumber: json['phoneNumber'] as String,
    gender: json['gender'] as String,
    houseNumber: json['houseNumber'] as String,
    line1: json['line1'] as String,
    line2: json['line2'] as String,
    postcode: json['postcode'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    county: json['county'] as String,
    cardName: json['cardName'] as String,
    cardNumber: json['cardNumber'] as String,
    sortCode: json['sortCode'] as String,
    passportUrlImage: json['passportUrlImage'] as String,
    passportNameImage: json['passportNameImage'] as String,
    documentUrlImage: json['documentUrlImage'] as String,
    documentNameImage: json['documentNameImage'] as String,
    termsAndService: json['termsAndService'] as bool,
  );
}

Map<String, dynamic> _$_$_PaymentSetupDtoToJson(_$_PaymentSetupDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'dob': instance.dob,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'houseNumber': instance.houseNumber,
      'line1': instance.line1,
      'line2': instance.line2,
      'postcode': instance.postcode,
      'city': instance.city,
      'country': instance.country,
      'county': instance.county,
      'cardName': instance.cardName,
      'cardNumber': instance.cardNumber,
      'sortCode': instance.sortCode,
      'passportUrlImage': instance.passportUrlImage,
      'passportNameImage': instance.passportNameImage,
      'documentUrlImage': instance.documentUrlImage,
      'documentNameImage': instance.documentNameImage,
      'termsAndService': instance.termsAndService,
    };
