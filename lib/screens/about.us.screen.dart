import 'package:app/styles/app.colors.dart';
import 'package:app/utils/size.config.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: softBlack,
      appBar: AppBar(
        backgroundColor: softBlack,
        title: Text('About Us'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: size * 25,
                  width: SizeConfig.screenHeight,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: size * 20,
                        width: size * 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/logo.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Holywings Indonesia',
                        style: TextStyle(
                          color: white,
                          fontSize: size * 1.75,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Founded in 2014, HOLYWINGS is a lifestyle concept that includes a chain of Beer House, a Lounge, and a Nightclub. Our vision is to become the one stop destination for all your lifestyle leisure needs. we will be your escape from the Pandemonium of urban life and the daily hustle that comes with it. We have live music daily, an ever growing menu featuring cuisine styles from around the world, and an extensive drinks menu for any occasion.\n\nWe are the company behind HOLYWINGS, HOLYDUCK, OLD TEMPLE BAR, PENTAGON SURABAYA. Our restaurants are located in Jakarta and other area in Indonesia. Right now we are working to expand our brands in cities around Indonesia.\n\nHOLYWINGS - JAKARTA (Pantai Indah Kapuk, Kelapa Gading, Gunawarman, Mega Kuningan, Epicentrum, Pondok Indah), Surabaya (Graha Family & Kertajaya), Makassar, Medan, Tangerang, Bandung',
                  style: TextStyle(color: white, fontSize: size * 1.6),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
