import 'package:flutter/material.dart';
import 'package:test_app/Page2.dart';

class Home extends StatelessWidget {
  final String nama;
  final String role;
  final String sekolah;
  final String deskripsi;

  Home({
    required this.nama,
    required this.role,
    required this.sekolah,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/pink.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.6,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromARGB(255, 241, 237, 241),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('assets/image/fotoaku.png'),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        nama, 
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold, 
                          color: Colors.black, 
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$role\n$sekolah\n$deskripsi",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(248, 8, 8, 8),
                        ),
                      ),
                      const SizedBox(height: 10), 
                      TextButton(
                        onPressed: () {
                        
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        child: const Text(
                          'See More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            color: Colors.black, 
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
