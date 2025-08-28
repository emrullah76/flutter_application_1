import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key, required this.gelenDeger});
  final int gelenDeger;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hakkımızda")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gelen Değer: $gelenDeger"),
            Divider(),
            Text("ABout Sayfası"),
          ],
        ),
      ),
    );
  }
}
