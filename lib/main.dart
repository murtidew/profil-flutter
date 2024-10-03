import 'package:flutter/material.dart';
import 'package:test_app/Page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              width: MediaQuery.of(context).size.width * 0.9, // Lebar card disesuaikan
              height: MediaQuery.of(context).size.height * 0.6, // Tinggi card disesuaikan
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromARGB(255, 241, 237, 241),
                elevation: 5, // Menambah bayangan
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 60.0, // Ukuran avatar dikecilkan
                        backgroundImage: AssetImage('assets/image/fotoaku.png'),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Murti Dewi Oktaviani Larasati",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18, 
                          color: Color.fromARGB(255, 228, 133, 204),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Vocational High School Student\nat SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14, 
                          color: Color.fromARGB(248, 236, 161, 234),
                        ),
                      ),

                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page2()),
                        );
                      }, child:Text('See More')
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
