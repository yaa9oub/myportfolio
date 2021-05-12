import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: size.width,
          child: Container(
            width: size.width / 3,
            height: size.width / 3,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("images/me.jpg"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.deepOrange[300], BlendMode.color),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: size.width * 2 / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello there! My name is ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: size.width / 20, color: Colors.orange[400]),
                ),
                Text(
                  "SEYF\nYACOUB",
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(fontSize: size.width / 10, color: Colors.white),
                ),
                Text(
                  "A Google Developer Student Clubs marketing lead & a software development engineer.",
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(fontSize: size.width / 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            _launchURL(
                                "https://drive.google.com/file/d/1GpJLlj4E3ccG7LnewfAS2GNTLrxglXN5/view?usp=sharing");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 15.0),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("Curriculum Vitae",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width / 40)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 15.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("Say Hi!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width / 40)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _launchURL(myurl) async {
    if (await canLaunch(myurl)) {
      await launch(myurl);
    } else {
      throw 'Could not launch $myurl';
    }
  }
}
