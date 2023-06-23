import 'package:flutter/material.dart';

Widget futureBuilderHandler(AsyncSnapshot snapshot, Widget widget,
    {Widget? err, Widget? waiting}) {
  return (snapshot.connectionState == ConnectionState.waiting)
      ? waiting ?? const Center(child: CircularProgressIndicator())
      : snapshot.hasError
          ? err ?? Center(child: Text(snapshot.error.toString()))
          : widget;
}
