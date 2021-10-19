import 'package:flutter/material.dart';
import 'package:house_properties_business/theme.dart';

class AdsBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xff437FC5),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8
        ),
        child: Row(
          children: [
            Image.asset('assets/phoneads.png',
            width: 78,
            height: 150,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kami bantu niagakan!',style: titleText.copyWith(color: whiteColor,fontSize:20 ),
                ),
                Text('iklan kan rumahmu',style: subtitleText.copyWith(color: whiteColor,fontSize:18 ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 218,
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFFFFFF)
                  ),
                  child: TextButton(
                  child: Text(
                    'kunjungi pengiklan',style: subtitleText.copyWith(color: blackColor,fontSize: 18),
                  ),
                  onPressed: (){},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}