// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopsResponse _$ShopsResponseFromJson(Map<String, dynamic> json) =>
    ShopsResponse(
      (json['result'] as List<dynamic>?)
          ?.map((e) => ResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShopsResponseToJson(ShopsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

ResultResponse _$ResultResponseFromJson(Map<String, dynamic> json) =>
    ResultResponse(
      json['shopName'] == null
          ? null
          : DescriptionResponse.fromJson(
              json['shopName'] as Map<String, dynamic>),
      json['description'] == null
          ? null
          : DescriptionResponse.fromJson(
              json['description'] as Map<String, dynamic>),
      json['minimumOrder'] == null
          ? null
          : MinimumOrderResponse.fromJson(
              json['minimumOrder'] as Map<String, dynamic>),
      json['address'] == null
          ? null
          : AddressResponse.fromJson(json['address'] as Map<String, dynamic>),
      (json['contactInfo'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['deliveryRegions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['paymentMethod'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['_id'] as String?,
      json['ownerFullName'] as String?,
      json['profilePhoto'] as String?,
      json['coverPhoto'] as String?,
      json['menu'] as String?,
      json['operation'] as String?,
      json['review'] as String?,
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      json['_v'] as int?,
      json['categoryType'] as String?,
      json['estimatedDeliveryTime'] as String?,
      json['deliveryFeeType'] as String?,
      json['deliveryFeeTag'] as String?,
      json['enable'] as bool?,
      json['badgeTag'] as String?,
      json['availability'] as bool?,
    );

Map<String, dynamic> _$ResultResponseToJson(ResultResponse instance) =>
    <String, dynamic>{
      'shopName': instance.shopName,
      'description': instance.description,
      'minimumOrder': instance.minimumOrder,
      'address': instance.address,
      'contactInfo': instance.contactInfo,
      'deliveryRegions': instance.deliveryRegions,
      'paymentMethod': instance.paymentMethod,
      '_id': instance.id,
      'ownerFullName': instance.ownerFullName,
      'profilePhoto': instance.profilePhoto,
      'coverPhoto': instance.coverPhoto,
      'menu': instance.menu,
      'operation': instance.operation,
      'review': instance.review,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '_v': instance.v,
      'categoryType': instance.categoryType,
      'estimatedDeliveryTime': instance.estimatedDeliveryTime,
      'deliveryFeeType': instance.deliveryFeeType,
      'deliveryFeeTag': instance.deliveryFeeTag,
      'enable': instance.enable,
      'badgeTag': instance.badgeTag,
      'availability': instance.availability,
    };

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) =>
    AddressResponse(
      json['city'] as String?,
      json['country'] as String?,
      json['otherDetails'] as String?,
      json['state'] as String?,
      json['street'] as String?,
    );

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'otherDetails': instance.otherDetails,
      'state': instance.state,
      'street': instance.street,
    };

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) => CityResponse(
      json['city'] as String?,
    );

Map<String, dynamic> _$CityResponseToJson(CityResponse instance) =>
    <String, dynamic>{
      'city': instance.name,
    };

CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) =>
    CountryResponse(
      json['country'] as String?,
    );

Map<String, dynamic> _$CountryResponseToJson(CountryResponse instance) =>
    <String, dynamic>{
      'country': instance.name,
    };

StateResponse _$StateResponseFromJson(Map<String, dynamic> json) =>
    StateResponse(
      json['state'] as String?,
    );

Map<String, dynamic> _$StateResponseToJson(StateResponse instance) =>
    <String, dynamic>{
      'state': instance.name,
    };

BadgeTagResponse _$BadgeTagResponseFromJson(Map<String, dynamic> json) =>
    BadgeTagResponse(
      json['badgeTag'] as String?,
    );

Map<String, dynamic> _$BadgeTagResponseToJson(BadgeTagResponse instance) =>
    <String, dynamic>{
      'badgeTag': instance.badgeTag,
    };

DeliveryFeeTypeResponse _$DeliveryFeeTypeResponseFromJson(
        Map<String, dynamic> json) =>
    DeliveryFeeTypeResponse(
      json['deliveryFeeType'] as String?,
    );

Map<String, dynamic> _$DeliveryFeeTypeResponseToJson(
        DeliveryFeeTypeResponse instance) =>
    <String, dynamic>{
      'deliveryFeeType': instance.deliveryFeeType,
    };

DescriptionResponse _$DescriptionResponseFromJson(Map<String, dynamic> json) =>
    DescriptionResponse(
      json['en'] as String?,
      json['ar'] as String?,
    );

Map<String, dynamic> _$DescriptionResponseToJson(
        DescriptionResponse instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

MinimumOrderResponse _$MinimumOrderResponseFromJson(
        Map<String, dynamic> json) =>
    MinimumOrderResponse(
      json['amount'] as int?,
      json['currency'] as String?,
    );

Map<String, dynamic> _$MinimumOrderResponseToJson(
        MinimumOrderResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

CurrencyResponse _$CurrencyResponseFromJson(Map<String, dynamic> json) =>
    CurrencyResponse(
      json['currency'] as String?,
    );

Map<String, dynamic> _$CurrencyResponseToJson(CurrencyResponse instance) =>
    <String, dynamic>{
      'currency': instance.name,
    };
