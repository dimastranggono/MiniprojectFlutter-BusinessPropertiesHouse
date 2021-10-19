import 'package:flutter/material.dart';
import 'package:house_properties_business/model/daerah_models.dart';
import 'package:house_properties_business/model/recommended_models.dart';
import 'package:house_properties_business/provider/house_provider.dart';
import 'package:house_properties_business/theme.dart';
import 'package:house_properties_business/widget/ads_banner.dart';
import 'package:house_properties_business/widget/daerah.dart';
import 'package:house_properties_business/widget/recommended_house.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var spaceProvider = Provider.of<HouseProvider>(context);//mengambil provider dari class house_provider.dart NOTE: Lihat pada bagian recommended utk mengambil function getDataRecommended dari provider
    spaceProvider.getDataRecommended();

    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: EdgeInsets.only(left: 16,top: 41),
          child: ListView(
              children: [
                //NOTE : HEADER
                Text('Cari rumah',style: titleText.copyWith(fontSize:24,)),
                Text('di tiap Daerah',style: regularText.copyWith(fontSize:24,)),
                SizedBox(height: 13,),
                Text('Cari berdasarkan daerah',style: titleText.copyWith(fontSize:18,color: greyColor),),

                //NOTE : WIDGET DAERAH
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Daerah(//Memanggil Widget Daerah
                        DaerahModels(nama: 'Kedungkandang')//Memanggil Models DaerahModels
                      ),
                      SizedBox(width: 10,),
                      Daerah(
                        DaerahModels(nama: 'Blimbing')
                      ),
                      SizedBox(width: 10,),
                      Daerah(
                        DaerahModels(nama: 'Klojen')
                      ),
                      SizedBox(width: 10,),
                      Daerah(
                        DaerahModels(nama: 'Sukun')
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SizedBox(height: 28,),

                //NOTE : ADSBANNER
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: AdsBanner()//memanggil widget ads banner
                ),
                SizedBox(height: 30,),

                //NOTE : RECOMMENDED
                Text('Recommended',style: titleText.copyWith(fontSize: 20),),
                SizedBox(height: 5,),
                FutureBuilder( //memberikan widget FutureBuilder utk mengambil function getDataRecommended()
                  future:  spaceProvider.getDataRecommended(),
                  builder: (context,AsyncSnapshot snapshot){
                    if(snapshot.hasData){
                      return Column(
                  children: [
                    recommendedHouse(
                      RecommendedModels(id:1,nama: 'Kaksiho House',city: 'Malang',country: 'Indonesia',rating:3,address:'jl teluk etna 9',phone:'8205',mapUrl: 'https://goo.gl/maps/Mf2VWzSAB1PeNBSM9',photos: ["https://images.unsplash.com/photo-1554995207-c18c203602cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80",
      "https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8a2l0Y2hlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/flagged/photo-1556438758-84625859c6b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHRvaWxldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"],number_of_bedrooms: 2,price: '54', number_of_cupboards: 4,number_of_kitchens: 3, imageUrl: 'assets/houseone.png')
                    ),
                    SizedBox(height: 10,),
                    recommendedHouse(
                       RecommendedModels(id:2,nama: 'Kurito Ama',city: 'Malang',country: 'Indonesia', rating:3,address:'jl teluk etna 9',phone:'8205',mapUrl: 'https://goo.gl/maps/Mf2VWzSAB1PeNBSM9',photos: ["https://images.unsplash.com/photo-1554995207-c18c203602cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80",
      "https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8a2l0Y2hlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/flagged/photo-1556438758-84625859c6b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHRvaWxldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"],number_of_bedrooms: 2,price: '54', number_of_cupboards: 4,number_of_kitchens: 3, imageUrl: 'assets/housetwo.png')
                    ),
                    SizedBox(height: 10,),
                    recommendedHouse(
                       RecommendedModels(id:3,nama: 'Sizhuka palace',city: 'Malang',country: 'Indonesia', rating:3,address:'jl teluk etna 9',phone:'8205',mapUrl: 'https://goo.gl/maps/Mf2VWzSAB1PeNBSM9',photos: ["https://images.unsplash.com/photo-1554995207-c18c203602cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80",
      "https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8a2l0Y2hlbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/flagged/photo-1556438758-84625859c6b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHRvaWxldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"],number_of_bedrooms: 2,price: '54', number_of_cupboards: 4,number_of_kitchens: 3, imageUrl: 'assets/housethree.png')
                    ),
                  ],
                );
                    }
                    return Center(child: CircularProgressIndicator(),);
                  },
                )
              ],
          ),
        ),
      ),
    );
  }
}