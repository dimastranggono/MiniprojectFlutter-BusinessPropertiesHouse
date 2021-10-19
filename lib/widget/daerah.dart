import 'package:flutter/material.dart';
import 'package:house_properties_business/model/daerah_models.dart';
import 'package:house_properties_business/theme.dart';


class Daerah extends StatelessWidget {

  //Panggil DaerahModels untuk memanggil tiap variabel
  DaerahModels daerahModels;

  Daerah(this.daerahModels);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xff4654D7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: TextButton(
        child: Text(
          daerahModels.nama,//pemanggilan variabel nama dengan menggunakan object dr class DaerahModels
          style: regularText.copyWith(color: whiteColor),
        ),
        onPressed: (){},),
    );
  }
}