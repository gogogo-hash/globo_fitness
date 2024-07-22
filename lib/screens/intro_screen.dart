import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double calculateMaxHeight(double x) {
      if (x >= 750) {
        return 400;
      } else {
        return x;
      }
    }

    double calculateMaxWidth(double x) {
      if (x >= 750) {
        return 1000 / 3;
      } else {
        return x;
      }
    }

    List<List<String>> imgDir1 = [
      ['assets/Banners_Nihongo//MusicClass.webp', 'Kids Sports Club'],
      ['assets/Banners_Nihongo/NailSalon.webp', 'Nail Salon'],
      ['assets/Banners_Nihongo/SeasonalGift.webp', 'Seasonal Gift'],
      ['assets/Banners_Nihongo/Travel.webp', 'Travel Agency'],
      ['assets/Banners_Nihongo/WineCollege.webp', 'Wine College'],
      ['assets/Banners_Nihongo/WorkingHoliday.webp', 'Working Holiday']
    ];
    List<List<String>> imgDir2 = [
      ['assets/Banners_English/Birthday.webp', 'Birthday Party Invitation'],
      ['assets/Banners_English/Christmas.webp', 'eSIM'],
      ['assets/Banners_English/DataPlan.webp', 'Christmas Card']
    ];
    List<List<String>> imgDir3 = [
      ['assets/Package/FlourMix.webp', 'Gluten Free Flour Mix 1'],
      ['assets/Package/MatchaFlour.webp', 'Gluten Free Flour Mix 2']
    ];
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/cat.jpg'),
          fit: BoxFit.cover,
        )),
        child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.50),
            child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nHELLO, I\'M HITO DESIGN\n',
                      style: GoogleFonts.permanentMarker(
                          color: Color.fromRGBO(107, 104, 99, 1), fontSize: 32),
                    ),
                    TextSpan(
                      text: 'Web Designer',
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(107, 104, 99, 1), fontSize: 20),
                    ),
                  ],
                ),
                textAlign: TextAlign.center)),
      ),
      RichText(
          text: TextSpan(
            text: '\n\n\nAbout Me',
            style: GoogleFonts.permanentMarker(
                color: Color.fromRGBO(107, 104, 99, 1), fontSize: 32),
          ),
          textAlign: TextAlign.center),
      Padding(
          padding: EdgeInsets.only(right: 35, left: 35),
          child: Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: RichText(
                    text: TextSpan(
                        text:
                            '初めましてhitoと申します。\nカナダで子育てをしながら、WEBデザインをしています。今までは勢いで何でも好きなことをしてきましたが、これからは家族の時間も大切にしながら、私自身が仕事も遊びも楽しんでいる所を子供達に見せて行きたいと思っています。\nクライアント様の意図を汲み取って、寄り添ったデザインが出来るよう心がけております。 デザインを通じて私に何が出来るのか、模索中ではありますがお手伝い出来ることがあればご相談ください。\n \n',
                        style: GoogleFonts.zenKakuGothicNew(
                            fontSize: 20, fontWeight: FontWeight.w300)),
                  )))),
      Padding(
          padding: EdgeInsets.only(right: 35, left: 35),
          child: Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: RichText(
                    text: TextSpan(
                        text:
                            'Nice to meet you, my name is HITO. I am a web designer while raising my children in Canada. I have been doing whatever I want with a lot of energy, but from now on, I would like to show my children that I enjoy both work and play, while also cherishing family time.\nI try to understand the client\'s intention and design with them in mind. I am still looking for what I can do through design, but if there is anything I can do to help, please contact me.',
                        style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 1.5)),
                  )))),
      RichText(
          text: TextSpan(
            text: '\n\n\nWorks',
            style: GoogleFonts.permanentMarker(
                color: Color.fromRGBO(107, 104, 99, 1), fontSize: 32),
          ),
          textAlign: TextAlign.center),
      Padding(
          padding: EdgeInsets.only(right: 35, left: 35),
          child: Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: Wrap(
                      children: List.generate(imgDir1.length, (index) {
                    return ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: calculateMaxWidth(
                              MediaQuery.of(context).size.width),
                          maxHeight: calculateMaxHeight(
                              MediaQuery.of(context).size.width),
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 6,
                                      spreadRadius: 0,
                                      offset: Offset(
                                        0,
                                        6,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(
                                            imgDir1[index][0].toString()),
                                      ),
                                      Expanded(
                                          child: FilledButton.tonal(
                                              onPressed: () => showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                        content: Image(
                                        image: AssetImage(
                                            imgDir1[index][0].toString()),
                                      ));
                                                  }),
                                              style: FilledButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  shape:
                                                      ContinuousRectangleBorder()),
                                              child: Text(imgDir1[index][1])))
                                    ]))));
                  })

                    

                      ))))
    ]));
  }
}
