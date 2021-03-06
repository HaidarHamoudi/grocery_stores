import 'package:flutter/material.dart';
import 'package:grocery_stores/presentation/resources/color_manager.dart';

class MessageDisplay extends StatelessWidget {
  const MessageDisplay({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 6,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(message,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: ColorManager.error,
            ),)
          ],
        ),
      ),
    );
  }
}
