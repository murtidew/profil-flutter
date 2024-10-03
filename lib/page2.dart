import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.8),
        title: Text('Detail Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(  // Memungkinkan scroll
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/pink.webp'),  // Menggunakan gambar sebagai background
              fit: BoxFit.cover,  // Agar gambar memenuhi seluruh layar
            ),
          ),
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Tambahkan CircleAvatar untuk foto profil
              CircleAvatar(
                radius: 50,  // Ukuran lingkaran
                backgroundImage: AssetImage('assets/image/fotoaku.png'),  // Gambar profil
              ),
              SizedBox(height: 20),  // Jarak antara foto profil dan konten
              _buildResponsiveCard(context, "About Me", 
                  "Hello! I am Murti Dewi, a passionate Flutter Developer with a keen interest in UI design. I love building beautiful and functional mobile applications."),
              _buildResponsiveCardWithList(context, "Soft Skill", [
                "Communication",
                "Problem-solving",
                "Teamwork",
                "Adaptability",
              ]),
              _buildResponsiveCardWithList(context, "Contact Me", [
                "Email: murti@example.com",
                "Instagram: @murtideww",
                "LinkedIn: linkedin.com/in/murti",
              ]),
            ],
          ),
        ),
      ),
    );
  }

  // Card dengan ukuran yang responsif
  Widget _buildResponsiveCard(BuildContext context, String title, String content) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,  // Lebar card disesuaikan dengan lebar layar
      padding: EdgeInsets.all(10.0),  // Memberikan padding luar agar card tidak terlalu mepet
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Colors.white.withOpacity(0.8),
        child: Padding(
          padding: EdgeInsets.all(20.0),  // Padding dalam card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                content,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Card dengan list dan ukuran yang responsif
  Widget _buildResponsiveCardWithList(BuildContext context, String title, List<String> items) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,  // Lebar card disesuaikan dengan lebar layar
      padding: EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Colors.white.withOpacity(0.8),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items.map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(item, style: TextStyle(fontSize: 14, color: Colors.black87)),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
