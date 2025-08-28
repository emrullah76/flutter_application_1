import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int sonuc = 0;
  var rakamController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fatih"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      controller: rakamController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Sayı Gir',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sonuc = int.parse(rakamController.text) * 2;
                });

                print("$sonuc");
              },
              child: Text("Hesapla"),
            ),

            Text("Sonuç: $sonuc"),
            Divider(),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(
                "https://yuumamobile.com/wp-content/uploads/2024/04/LinkedIn-Kapak-1536x384.png",
              ),
            ),
            Divider(),
            Image.asset("assets/images/apns.png"),

            Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutView(gelenDeger: sonuc),
                  ),
                );
              },
              child: Text("Detaya Git"),
            ),
          ],
        ),
      ),
    );
  }
}
