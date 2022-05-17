import 'package:grocery_stores/app/extensions.dart';
import 'package:grocery_stores/data/responses/responses.dart';
import 'package:grocery_stores/domain/model/model.dart';

const EMPTY = "";
const ZERO = 0;
const ZERO_DOUBLE = 0.0;
const BOOLEAN_FALSE = false;
final NULLDATETIME = DateTime.parse('2000-01-01');

extension CurrencyResponseMapper on CurrencyResponse? {
  Currency toDomain() {
    return Currency(this?.name?.orEmpty() ?? EMPTY);
  }
}

extension MinimumOrderResponseMapper on MinimumOrderResponse? {
  MinimumOrder toDomain() {
    return MinimumOrder(
        this?.amount?.orZero() ?? ZERO, this?.currency?.orEmpty() ?? EMPTY);
  }
}

extension DescriptionResponseMapper on DescriptionResponse? {
  Description toDomain() {
    return Description(
        this?.en?.orEmpty() ?? EMPTY, this?.ar?.orEmpty() ?? EMPTY);
  }
}

extension DeliveryFeeTypeResponseMapper on DeliveryFeeTypeResponse? {
  DeliveryFeeType toDomain() {
    return DeliveryFeeType(this?.deliveryFeeType?.orEmpty() ?? EMPTY);
  }
}

extension BadgeTagResponseMapper on BadgeTagResponse? {
  BadgeTag toDomain() {
    return BadgeTag(this?.badgeTag?.orEmpty() ?? EMPTY);
  }
}

extension StateResponseMapper on StateResponse? {
  State toDomain() {
    return State(this?.name?.orEmpty() ?? EMPTY);
  }
}

extension CountryResponseMapper on CountryResponse? {
  Country toDomain() {
    return Country(this?.name?.orEmpty() ?? EMPTY);
  }
}

extension CityResponseMapper on CityResponse? {
  City toDomain() {
    return City(this?.name?.orEmpty() ?? EMPTY);
  }
}

extension AddressResponseMapper on AddressResponse? {
  Address toDomain() {
    return Address(
        this?.city?.orEmpty() ?? EMPTY,
        this?.country?.orEmpty() ?? EMPTY,
        this?.otherDetails?.orEmpty() ?? EMPTY,
        this?.state?.orEmpty() ?? EMPTY,
        this?.street?.orEmpty() ?? EMPTY);
  }
}

extension ResultResponseMapper on ResultResponse? {
  Result toDomain() {
    return Result(
      this?.shopName?.toDomain(),
      this?.description?.toDomain(),
      this?.minimumOrder?.toDomain(),
      this?.address?.toDomain(),
      this?.contactInfo?.map((contactInfo) => contactInfo.orEmpty()).toList() ??
          const Iterable.empty().cast<String>().toList(),
      this
              ?.deliveryRegions
              ?.map((deliveryRegions) => deliveryRegions.orEmpty())
              .toList() ??
          const Iterable.empty().cast<String>().toList(),
      this
              ?.paymentMethod
              ?.map((paymentMethod) => paymentMethod.orEmpty())
              .toList() ??
          const Iterable.empty().cast<String>().toList(),
      this?.id?.orEmpty() ?? EMPTY,
      this?.ownerFullName?.orEmpty() ?? EMPTY,
      this?.profilePhoto?.orEmpty() ?? EMPTY,
      this?.coverPhoto?.orEmpty() ?? EMPTY,
      this?.menu?.orEmpty() ?? EMPTY,
      this?.operation?.orEmpty() ?? EMPTY,
      this?.review?.orEmpty() ?? EMPTY,
      this?.createdAt?.orNullDateTime() ?? NULLDATETIME,
      this?.updatedAt?.orNullDateTime() ?? NULLDATETIME,
      this?.v?.orZero() ?? ZERO,
      this?.categoryType?.orEmpty() ?? EMPTY,
      this?.estimatedDeliveryTime?.orEmpty() ?? EMPTY,
      this?.deliveryFeeType?.orEmpty() ?? EMPTY,
      this?.deliveryFeeTag?.orEmpty() ?? EMPTY,
      this?.enable?.orNullBoolean() ?? BOOLEAN_FALSE,
      this?.badgeTag?.orEmpty() ?? EMPTY,
      this?.availability?.orNullBoolean() ?? BOOLEAN_FALSE,
    );
  }
}

extension ShopsResponseMapper on ShopsResponse? {
  ShopsObject toDomain() {
    print('toDomain');
    List<Result> mappedResult =
        (this?.result?.map((result) => result.toDomain()) ??
                const Iterable.empty())
            .cast<Result>()
            .toList();
    ShopsData data = ShopsData(mappedResult);
    return ShopsObject(data);
  }
}
