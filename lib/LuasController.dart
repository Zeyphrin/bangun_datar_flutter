import 'package:get/get.dart';

class LuasController extends GetxController {

  final hasilLuasSegitiga = RxDouble(0.0);
  final hasilLuasSegiempat = RxDouble(0.0);
  final hasilLuasPersegiPanjang = RxDouble(0.0);
 final hasilLuasBelahKetupat = RxDouble(0.0);
  final hasilLuasLingkaran = RxDouble(0.0);


  luasSegitiga(double alas, double tinggi){
    hasilLuasSegitiga.value = 0.5 * alas * tinggi;
  }
  luasSegiempat(double sisi){
    hasilLuasSegiempat.value = sisi*sisi;
  }
  luasPersegiPanjang(double panjang, double lebar){
    hasilLuasPersegiPanjang.value =panjang * lebar ;
  }
luasBelahKetupat(double diagonal1, double diagonal2) {
  hasilLuasBelahKetupat.value = 0.5 * diagonal1 * diagonal2;
}
  luasLingkaran(double jarijari){
    hasilLuasLingkaran.value = 3.14 * jarijari * jarijari;
  }



}