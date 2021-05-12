import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bodyColumn.dart';
import 'package:portfolio/widgets/bodyRow.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top : 10),
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "C",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: size.height > size.width
                                ? size.width / 15
                                : size.width / 35,
                            color: Colors.orange[400]),
                      ),
                      Text(
                        "eyphe",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: size.height > size.width
                                ? size.width / 20
                                : size.width / 45,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              "About",
                              style: TextStyle(
                                  fontSize: size.height > size.width
                                      ? size.width / 40
                                      : size.width / 80,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              "My last video !!",
                              style: TextStyle(
                                  fontSize: size.height > size.width
                                      ? size.width / 40
                                      : size.width / 80,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                  fontSize: size.height > size.width
                                      ? size.width / 40
                                      : size.width / 80,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: size.height > size.width ? BodyColumn() : BodyRow(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _launchURL(
                                  "https://www.linkedin.com/in/seyf-yacoub/");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue[900],
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                "LinkedIn",
                                style: TextStyle(
                                    fontSize: size.height > size.width
                                        ? size.width / 40
                                        : size.width / 80,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _launchURL("https://github.com/yaa9oub");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue[900],
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                "Github",
                                style: TextStyle(
                                    fontSize: size.height > size.width
                                        ? size.width / 40
                                        : size.width / 80,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _launchURL("https://www.behance.net/ceyphe");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue[900],
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                "Behance",
                                style: TextStyle(
                                    fontSize: size.height > size.width
                                        ? size.width / 40
                                        : size.width / 80,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _launchURL("https://www.youtube.com/c/ceyphe");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue[900],
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                "Youtube",
                                style: TextStyle(
                                    fontSize: size.height > size.width
                                        ? size.width / 40
                                        : size.width / 80,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _launchURL("https://www.instagram.com/ceyphe/");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue[900],
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                "Instagram",
                                style: TextStyle(
                                    fontSize: size.height > size.width
                                        ? size.width / 40
                                        : size.width / 80,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Ceyphe © 2021",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: size.height > size.width
                            ? size.width / 40
                            : size.width / 80,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
