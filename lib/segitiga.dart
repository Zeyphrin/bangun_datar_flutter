import 'package:flutter/material.dart';
import 'package:apk_bangun_datar/LuasController.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LuasSegitiga extends StatefulWidget {
  const LuasSegitiga({Key? key}) : super(key: key);

  @override
  State<LuasSegitiga> createState() => _LuasSegitigaState();
}

class _LuasSegitigaState extends State<LuasSegitiga> {
  TextEditingController ctrAlas = TextEditingController();
  TextEditingController ctrTinggi = TextEditingController();
  final LuasController controller = Get.put(LuasController());

  Widget myTextField(TextEditingController ctr, String myLabel) {
    return Container(
      child: TextField(
        controller: ctr,
        style: TextStyle(color: Colors.black, fontSize: 13),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Hanya menerima input angka
        keyboardType: TextInputType.number, 
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10, left: 5),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: myLabel, // Menggunakan nilai myLabel sebagai hintText
          hintStyle:
              TextStyle(fontFamily: 'Montserrat', color: Color(0xFF7E7E7E)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Color(0xFF2A2A2A),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'SEGITIGA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33.60,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: 324,
                        child: Text(
                          'segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut. ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: 300,
                        height: 128,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 55),
                              child: Container(
                                width: 200,
                                height: 128,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/luas_segitiga.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: SizedBox(
                                width: 46,
                                child: Text(
                                  'Rumus :',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: SizedBox(
                        width: 330,
                        height: 40,
                        child: myTextField(ctrAlas, "Alas"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        width: 330,
                        height: 40,
                        child: myTextField(ctrTinggi, "Tinggi"),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 95, 95, 95),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      onPressed: () => controller.luasSegitiga(
                        double.parse(ctrAlas.text.toString()),
                        double.parse(ctrTinggi.text.toString()),
                      ),
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xFF2A2A2A),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, bottom: 0, left: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'HASIL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Obx(
                          () {
                            String hasilText = 'Anda belum memasukkan input apapun!';

                            if (ctrAlas.text.isNotEmpty && ctrTinggi.text.isNotEmpty) {
                              hasilText =
                                   'Hasil dari luas segitiga dengan panjang alas ${ctrAlas.text} dan tinggi ${ctrTinggi.text} cm adalah: ${controller.hasilLuasSegitiga.value} cm²';
                            }
                            else if (ctrAlas.text.isEmpty && ctrAlas.text.isNotEmpty) {
                              hasilText = 'Masukkan input alas terlebih dahulu!';
                            }
                             else if (ctrAlas.text.isNotEmpty && ctrAlas.text.isEmpty) {
                              hasilText = 'Masukkan input tinggi terlebih dahulu!';
                            }
                            else{
                              'Masukkan input alas dan tinggi terlebih dahulu!';
                            }

                            return Text(
                              hasilText,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            );
                          },
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
