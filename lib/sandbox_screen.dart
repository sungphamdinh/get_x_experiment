import 'package:flutter/material.dart';

class SandBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Material(
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return FlutterLogo(size: 80);
                  },
                  itemCount: 7,
                )),
            Container(
                width: MediaQuery.of(context).size.width / 2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return FlutterLogo(size: 80);
                  },
                  itemCount: 7,
                )),
          ],
        ),
      );
}
