


import 'package:flutter/material.dart';

import '../../../core/constant widgets/textwidget.dart';

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextWidget(txt: title),
        TextWidget(txt: value),
      ]),
    );
  }
}
