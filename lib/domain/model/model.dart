class ShopsObject{
  ShopsData data;

  ShopsObject(this.data);
}

class ShopsData {
  ShopsData(this.result);

  List<Result> result;
}

class Result {
  Result(
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

  Description? shopName;
  Description? description;
  MinimumOrder? minimumOrder;
  Address? address;
  List<String> contactInfo;
  List<String> deliveryRegions;
  List<String> paymentMethod;
  String id;
  String ownerFullName;
  String profilePhoto;
  String coverPhoto;
  String menu;
  String operation;
  String review;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String categoryType;
  String estimatedDeliveryTime;
  String deliveryFeeType;
  String deliveryFeeTag;
  bool enable;
  String badgeTag;
  bool availability;
}

class Address {
  Address(
    this.city,
    this.country,
    this.otherDetails,
    this.state,
    this.street,
  );

  String city;
  String country;
  String otherDetails;
  String state;
  String street;
}

class City {
  String name;

  City(this.name);
}

class Country {
  String name;

  Country(this.name);
}

class State {
  String name;

  State(this.name);
}

class BadgeTag {
  String badgeTag;

  BadgeTag(this.badgeTag);
}

class DeliveryFeeType {
  String deliveryFeeType;

  DeliveryFeeType(this.deliveryFeeType);
}

class Description {
  Description(
    this.en,
    this.ar,
  );

  String en;
  String ar;
}

class MinimumOrder {
  MinimumOrder(
    this.amount,
    this.currency,
  );

  int amount;
  String currency;
}

class Currency {
  String name;

  Currency(this.name);
}
