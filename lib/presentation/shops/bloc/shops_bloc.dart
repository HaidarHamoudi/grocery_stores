import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery_stores/data/network/failure.dart';
import 'package:grocery_stores/domain/model/model.dart';
import 'package:grocery_stores/domain/usecase/base_usecase.dart';
import 'package:grocery_stores/domain/usecase/shops_usecase.dart';

part 'shops_event.dart';

part 'shops_state.dart';

class ShopsBloc extends Bloc<ShopsEvent, ShopsState> {
  final ShopsUseCase shopsUseCase;

  ShopsBloc({required ShopsUseCase shops})
      : shopsUseCase = shops,
        super(ShopsInitial()) {
    on<ShopsEvent>(
      (event, emit) async {
        emit(ShopsLoading());
        final result = await shops(NoParams());
        print('##########$result');
        emit(result.fold((failure) => ShopsFailed(message: failure.message),
            (shopsObject) => ShopsLoaded(shopsObject: shopsObject)));
      },
    );
  }
}
