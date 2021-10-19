import 'package:flutter/material.dart';
import 'package:house_properties_business/model/recommended_models.dart';
import 'package:house_properties_business/pages/detail_pages.dart';
import 'package:house_properties_business/theme.dart';

class recommendedHouse extends StatelessWidget {

  RecommendedModels recommendedModels;
  recommendedHouse(this.recommendedModels);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, 
          MaterialPageRoute(
            builder: (context)=> DetailPages(recommendedModels)
          )
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 120,
              height:105 ,
              child: Image.asset(recommendedModels.imageUrl),
            ),
          ),
          SizedBox(width:10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recommendedModels.nama, style: titleText.copyWith(fontSize: 20),),
              SizedBox(height:5),
              Row(
                children: [
                  Image.asset('assets/shower.png',width: 20,),
                  Text(recommendedModels.number_of_kitchens.toString() ,style: titleText.copyWith(fontSize: 18),),
                  SizedBox(width: 8,),
                  Image.asset('assets/Vector.png',width: 20,),
                  Text(recommendedModels.number_of_cupboards.toString(),style: titleText.copyWith(fontSize: 18),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}