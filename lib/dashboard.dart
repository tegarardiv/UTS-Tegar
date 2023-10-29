import 'package:flutter/material.dart';
import 'package:tegar1/main.dart';
import 'package:tegar1/profile.dart';

void main() {
  runApp(dashboard());
}

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        title: Text('Dashboard'),
      ),
       body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // ListView Vertikal dengan Card
        Container(
          alignment: Alignment.centerLeft,
          height: 200.0,
           // Atur tinggi sesuai kebutuhan
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Pesanan'),
                  
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Favorit'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Pengaturan'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Bantuan'),
                ),
              ),
              // Tambahkan lebih banyak Card vertikal sesuai kebutuhan
            ],
          ),
        ),

        // ListView Horizontal dengan Card
        Container(
          height: 150.0, // Atur tinggi sesuai kebutuhan
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                child: Container(
                  width: 80.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/clapperboard.png"), // Ganti dengan path gambar yang sesuai
                ),
              ),
              Card(
                child: Container(
                  width: 90.0,
                  height: 50.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/live.png"), // Ganti dengan path gambar yang sesuai
                ),
              ),
              Card(
                child: Container(
                  width: 80.0,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Image.asset("image/pay.png"),
                ),
              ),
              // Tambahkan lebih banyak Card horizontal sesuai kebutuhan
            ],
          ),
        ),

        ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginApp(),
                    )
                  );
              },
              child: Text('Back Page'),
            ),
        ElevatedButton(
          onPressed: () {
           Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfileApp()
                    )); // Tindakan yang akan diambil ketika tombol "Selanjutnya" ditekan
          },
          child: Text('Profil Page'),
        ),

        // Tombol Kembali
        
      ],
    );
  }
}