import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Saya'),
        ),
        body: ProfileWidget(),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('image/aku.jpg'), // Ganti dengan gambar profil Anda
        ),
        SizedBox(height: 20),
        Text(
          'Tegar Ardi V', // Ganti dengan nama Anda
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Gatauuu', // Ganti dengan pernyataan singkat Anda
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.link),
              onPressed: () {
                // Tautan ke media sosial Anda (misalnya, GitHub)
                // Ganti dengan tautan media sosial Anda
                // Misalnya: Buka URL ke profil GitHub Anda
              },
            ),
            IconButton(
              icon: Icon(Icons.link),
              onPressed: () {
                // Tautan ke media sosial lainnya (misalnya, LinkedIn)
                // Ganti dengan tautan media sosial lainnya
              },
            ),
          ],
        ),
      ],
    );
  }
}