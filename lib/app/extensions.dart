// extension on String
import 'package:flutter/material.dart';
import 'package:grocery_stores/presentation/resources/color_manager.dart';

import '../data/mapper/mapper.dart';

// extension on String
extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return EMPTY;
    } else {
      return this!;
    }
  }
}

// extension on DateTime
extension NonNullDateTime on DateTime?{
  DateTime orNullDateTime(){
    if(this == null){
      return DateTime.parse('2000-01-01');
    } else{
      return this!;
    }
  }
}

// extension on Integer
extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return ZERO;
    } else {
      return this!;
    }
  }
}


// extension on Bool
extension NonNullBool on bool? {
  bool orNullBoolean() {
    if (this == null) {
      return BOOLEAN_FALSE;
    } else {
      return this!;
    }
  }
}

extension ContextX on BuildContext {
  double getHeight([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).size.height * factor;
  }

  double getWidth([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).size.width * factor;
  }

  double get height => getHeight();
  double get width => getWidth();

  TextTheme get textTheme => Theme.of(this).textTheme;

  Future<T?> push<T>(Widget page) =>
      Navigator.push<T>(this, MaterialPageRoute(builder: (context) => page));

  Future<bool> pop<T>([T? result]) => Navigator.maybePop(this, result);

  void showSnack(String msg, [Color? color]) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: color ?? ColorManager.error,
      ),
    );
  }
}


extension ClickableX on Widget {
  Widget onTap(VoidCallback action, {bool opaque = true}) {
    return GestureDetector(
      behavior: opaque ? HitTestBehavior.opaque : HitTestBehavior.deferToChild,
      onTap: action,
      child: this,
    );
  }
}