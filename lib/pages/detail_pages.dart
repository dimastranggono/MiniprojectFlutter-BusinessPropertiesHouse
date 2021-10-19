import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_properties_business/model/recommended_models.dart';
import 'package:house_properties_business/pages/error_pages.dart';
import 'package:house_properties_business/theme.dart';
import 'package:url_launcher/url_launcher.dart';//import package dari pubdev untuk url_launcher URL/telephone/email/sms. note: setting utk android dan IOS berbeda!

class DetailPages extends StatelessWidget {
  RecommendedModels recModels;
  DetailPages(this.recModels);

  @override
  Widget build(BuildContext context) {

    //method launchUrl meenggunakan dependencies url_launcher di pubdev
    launchUrl(String url) async{
      if (await canLaunch(url)) { //can launch berarti memberikan kondisi untuk link kepada website atau url
        launch(url);
      }else{ //jika tidak bisa maka akan diarahkan ke page Error.dart
        //throw(url);
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPages()));
      }
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/bannerdetail.png',
              width: MediaQuery.of(context).size.width,
              height: 400,
              fit: BoxFit.cover,
            ),
            ListView(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/backbutton.png',
                        width: 60,
                      ),
                    ),
                    Image.asset(
                      'assets/wishtlisbutton.png',
                      width: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 270),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('Kaksiho house',
                        style: GoogleFonts.poppins(
                            fontSize: 24, color: Color(0xff191919))),
                    Text.rich(TextSpan(
                        text: 'Price : \$ ',
                        style: subtitleText.copyWith(
                            fontSize: 20, color: Color(0xff6892FF)),
                        children: [
                          TextSpan(
                              text: '5.500.000.000',
                              style: titleText.copyWith(
                                  fontSize: 25, color: Color(0xff437FC5)))
                        ])),
                    Text.rich(TextSpan(
                        text: 'Luas tanah : ',
                        style: subtitleText.copyWith(
                            fontSize: 16, color: Color(0xff191919)),
                        children: [
                          TextSpan(
                              text: '480m',
                              style: subtitleText.copyWith(
                                  fontSize: 25, color: Color(0xff191919)))
                        ])),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/shower.png',
                          width: 28,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4',
                          style: titleText.copyWith(fontSize: 22),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/Vector.png',
                          width: 28,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4',
                          style: titleText.copyWith(fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Photos',
                      style:
                          subtitleText.copyWith(fontSize: 18, letterSpacing: 8),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Container(
                        height: 75,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset(
                              'assets/interrior1.png',
                              width: 110,
                            ),
                            SizedBox(width: 10,),
                            Image.asset(
                              'assets/interrior2.png',
                              width: 110,
                            ),
                            SizedBox(width: 10,),
                            Image.asset(
                              'assets/interrior3.png',
                              width: 110,
                            ),
                            SizedBox(width: 10,),
                            Image.asset(
                              'assets/house2.png',
                              width: 110,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lokasi',
                      style:
                          subtitleText.copyWith(fontSize: 18, letterSpacing: 8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text.rich(TextSpan(
                        text: 'Jakarta ',
                        style: subtitleText.copyWith(
                            fontSize: 16, color: Color(0xff191919),fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                              text: 'Indonesia',
                              style: titleText.copyWith(
                                  fontSize: 20, color: Color(0xff191919)))
                        ])),
                    InkWell(
                      onTap: (){
                        launchUrl('https://buildwithangga.com/');
                      },
                      child: Text(
                        'Lihat lokasi di peta',
                        style: subtitleText.copyWith(
                            fontSize: 20,
                            color: Color(0xff9C9C9C),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff6892FF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextButton(
                        onPressed: () {
                          canLaunch('tel:081335293273');
                        },
                        child: Text(
                          'Pesan sekarang',
                          style: subtitleText.copyWith(
                              fontSize: 18, color: Color(0xffFFFFFF)),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
