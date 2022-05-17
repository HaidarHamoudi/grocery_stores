part of 'shops_bloc.dart';

abstract class ShopsState extends Equatable {
  const ShopsState();

  @override
  List<Object?> get props => [];
}

class ShopsInitial extends ShopsState {}

class ShopsLoading extends ShopsState {}

class ShopsLoaded extends ShopsState {
  final ShopsObject shopsObject;

  const ShopsLoaded({required this.shopsObject});

  @override
  List<Object?> get props => [shopsObject];
}

class ShopsFailed extends ShopsState {
  final String message;

  const ShopsFailed({required this.message});

  @override
  List<Object?> get props => [message];
}
