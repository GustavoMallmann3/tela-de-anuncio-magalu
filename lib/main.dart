import 'package:anuncio_magazine/screens/home/home.dart';
import 'package:anuncio_magazine/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          color: grayDivider,
        ),
      ),
    ),
  );
}
