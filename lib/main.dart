import 'package:flutter/material.dart';
import 'package:apk_bangun_datar/segitiga.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 311,
                height: 90,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 45),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'RUMUS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'LUAS BANGUN DATAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 290,
                          child: Text(
                            'Segitiga | Lingkaran | Persegi | Persegi Panjang | Belah Ketupat',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LuasSegitiga(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff303030),
                      minimumSize: Size(330, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  child: Container(
                      child: Text(
                    'Segitiga',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.87,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LuasBangunDatarPage(2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff303030),
                      minimumSize: Size(330, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  child: Container(
                      child: Text(
                    'Lingkaran',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.87,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LuasBangunDatarPage(3),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff303030),
                      minimumSize: Size(330, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  child: Container(
                      child: Text(
                    'Persegi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.87,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LuasBangunDatarPage(4),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff303030),
                      minimumSize: Size(330, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  child: Container(
                      child: Text(
                    'Persegi Panjang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.87,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LuasBangunDatarPage(5),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff303030),
                      minimumSize: Size(330, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  child: Container(
                      child: Text(
                    'Belah Ketupat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.87,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'ps : aplikasi ini dibuat karena tugas dari pak aji dan masih dalam tahap pengembangan, bila ada kesalahan dalam design atau coding dalam aplikasinya, saya minta maaf yah pak -Chizu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LuasBangunDatarPage extends StatelessWidget {
  final int shapeNumber;

  LuasBangunDatarPage(this.shapeNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Bangun Datar - Bentuk $shapeNumber'),
      ),
      body: Center(
        child: Text(
            'Ini adalah halaman untuk menghitung luas bangun datar dengan bentuk $shapeNumber.'),
      ),
    );
  }
}
