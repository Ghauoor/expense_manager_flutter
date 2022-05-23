import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  const AdaptiveButton({Key? key,required this.text, required this.handler,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child:  Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : TextButton(
            style: TextButton.styleFrom(
                onSurface: Theme.of(context).primaryColor,
                textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            onPressed: handler,
            child:  Text(text),
          );
  }
}
