import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:house_properties_business/model/recommended_models.dart';
import 'package:http/http.dart' as http;
class HouseProvider extends ChangeNotifier{
  
  getDataRecommended() async{
    var result  = await http.get(Uri.parse('http://bwa-cozy.herokuapp.com/recommended-spaces'));
  
    print(result.statusCode);
    print(result.body);

    if(result.statusCode == 200){
      List data = jsonDecode(result.body);
      List<RecommendedModels> spaces = data.map((item) => RecommendedModels.fromJson(item)).toList();
      return spaces;
    } else{
      return <RecommendedModels>[];
    }
   
  }

}
