import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class ShopsResponse {
  ShopsResponse(
    this.result,
  );

  @JsonKey(name: "result")
  List<ResultResponse>? result;

  factory ShopsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShopsResponseToJson(this);
}

@JsonSerializable()
class ResultResponse {
  ResultResponse(
    this.shopName,
    this.description,
    this.minimumOrder,
    this.address,
    this.contactInfo,
    this.deliveryRegions,
    this.paymentMethod,
    this.id,
    this.ownerFullName,
    this.profilePhoto,
    this.coverPhoto,
    this.menu,
    this.operation,
    this.review,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.categoryType,
    this.estimatedDeliveryTime,
    this.deliveryFeeType,
    this.deliveryFeeTag,
    this.enable,
    this.badgeTag,
    this.availability,
  );

  @JsonKey(name: 'shopName')
  DescriptionResponse? shopName;
  @JsonKey(name: 'description')
  DescriptionResponse? description;
  @JsonKey(name: 'minimumOrder')
  MinimumOrderResponse? minimumOrder;
  @JsonKey(name: 'address')
  AddressResponse? address;
  @JsonKey(name: 'contactInfo')
  List<String>? contactInfo;
  @JsonKey(name: 'deliveryRegions')
  List<String>? deliveryRegions;
  @JsonKey(name: 'paymentMethod')
  List<String>? paymentMethod;
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'ownerFullName')
  String? ownerFullName;
  @JsonKey(name: 'profilePhoto')
  String? profilePhoto;
  @JsonKey(name: 'coverPhoto')
  String? coverPhoto;
  @JsonKey(name: 'menu')
  String? menu;
  @JsonKey(name: 'operation')
  String? operation;
  @JsonKey(name: 'review')
  String? review;
  @JsonKey(name: 'createdAt')
  DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  DateTime? updatedAt;
  @JsonKey(name: '_v')
  int? v;
  @JsonKey(name: 'categoryType')
  String? categoryType;
  @JsonKey(name: 'estimatedDeliveryTime')
  String? estimatedDeliveryTime;
  @JsonKey(name: 'deliveryFeeType')
  String? deliveryFeeType;
  @JsonKey(name: 'deliveryFeeTag')
  String? deliveryFeeTag;
  @JsonKey(name: 'enable')
  bool? enable;
  @JsonKey(name: 'badgeTag')
  String? badgeTag;
  @JsonKey(name: 'availability')
  bool? availability;

  factory ResultResponse.fromJson(Map<String, dynamic> json) => _$ResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResultResponseToJson(this);
}

@JsonSerializable()
class AddressResponse {
  AddressResponse(
    this.city,
    this.country,
    this.otherDetails,
    this.state,
    this.street,
  );

  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'otherDetails')
  String? otherDetails;
  @JsonKey(name: 'state')
  String? state;
  @JsonKey(name: 'street')
  String? street;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressResponseToJson(this);
}

@JsonSerializable()
class CityResponse {
  @JsonKey(name: 'city')
  String? name;

  CityResponse(this.name);

  factory CityResponse.fromJson(Map<String, dynamic> json) => _$CityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CityResponseToJson(this);
}

@JsonSerializable()
class CountryResponse {
  @JsonKey(name: 'country')
  String? name;

  CountryResponse(this.name);

  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CountryResponseToJson(this);
}

@JsonSerializable()
class StateResponse {
  @JsonKey(name: 'state')
  String? name;

  StateResponse(this.name);

  factory StateResponse.fromJson(Map<String, dynamic> json) => _$StateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StateResponseToJson(this);
}

@JsonSerializable()
class BadgeTagResponse {
  @JsonKey(name: 'badgeTag')
  String? badgeTag;

  BadgeTagResponse(this.badgeTag);

  factory BadgeTagResponse.fromJson(Map<String, dynamic> json) =>
      _$BadgeTagResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BadgeTagResponseToJson(this);
}

@JsonSerializable()
class DeliveryFeeTypeResponse {
  @JsonKey(name: 'deliveryFeeType')
  String? deliveryFeeType;

  DeliveryFeeTypeResponse(this.deliveryFeeType);

  factory DeliveryFeeTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFeeTypeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryFeeTypeResponseToJson(this);
}

@JsonSerializable()
class DescriptionResponse {
  DescriptionResponse(
    this.en,
    this.ar,
  );

  @JsonKey(name: 'en')
  String? en;
  @JsonKey(name: 'ar')
  String? ar;

  factory DescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$DescriptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionResponseToJson(this);
}

@JsonSerializable()
class MinimumOrderResponse {
  MinimumOrderResponse(
    this.amount,
    this.currency,
  );

  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'currency')
  String? currency;

  factory MinimumOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$MinimumOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MinimumOrderResponseToJson(this);
}

@JsonSerializable()
class CurrencyResponse {
  @JsonKey(name: 'currency')
  String? name;

  CurrencyResponse(this.name);

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrencyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyResponseToJson(this);
}
