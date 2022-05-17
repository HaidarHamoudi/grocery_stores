import 'package:flutter/material.dart';
import 'injection.dart' as di;
import 'app/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}
