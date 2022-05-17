
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_stores/presentation/resources/color_manager.dart';
import 'package:grocery_stores/presentation/resources/strings_manager.dart';
import 'package:grocery_stores/presentation/shops/bloc/shops_bloc.dart';
import 'package:grocery_stores/presentation/shops/widgets/loading_widget.dart';
import 'package:grocery_stores/presentation/shops/widgets/message_display.dart';
import 'package:grocery_stores/presentation/shops/widgets/shops_display.dart';

class ShopsView extends StatefulWidget {
  const ShopsView({Key? key}) : super(key: key);

  @override
  State<ShopsView> createState() => _ShopsViewState();
}

class _ShopsViewState extends State<ShopsView> {
  @override
  void initState() {
    BlocProvider.of<ShopsBloc>(context).add(GetShopsEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopsBloc, ShopsState>(
      builder: (context, state) {
        if (state is ShopsInitial) {
          return const LoadingWidget();
        } else if (state is ShopsLoading) {
          return const LoadingWidget();
        } else if (state is ShopsLoaded) {
          return  ShopsDisplay(shopsData: state.shopsObject.data);
        } else if (state is ShopsFailed) {
          return MessageDisplay(message: state.message);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
