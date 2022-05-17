part of 'shops_bloc.dart';

abstract class ShopsEvent extends Equatable {
  const ShopsEvent();

  @override
  List<Object?> get props => [];
}

class GetShopsEvent extends ShopsEvent {}
