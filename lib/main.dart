import 'package:flutter/material.dart';
import 'package:grocery_app/Theme/AppTheme.dart';
import 'Router/router.dart' as router_file show router;

void main() {
  runApp(const Root());
}
class Root extends StatelessWidget{
  const Root({super.key});
  
  @override
  Widget build(BuildContext context) {

return MaterialApp.router(
title: "Grocery App",
routerConfig: router_file.router,
);

  }
}