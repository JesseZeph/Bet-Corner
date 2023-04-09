import 'package:flutter/material.dart';

AppBar tipsAppBar({required Text title}) {

  return AppBar(
    // primary: false,
    backgroundColor: Colors.grey[300],
    foregroundColor: Colors.black87,
    elevation: 0,
    centerTitle: true,
    title: title,

  );
}

