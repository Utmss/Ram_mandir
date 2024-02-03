import 'package:flutter/material.dart';
import 'package:flutter_application_1/read.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 235, 164, 76),
          title: Text(
            "History",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Card(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: const Color.fromARGB(159, 237, 200, 141),
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.white.withOpacity(0.2), BlendMode.dstATop),
                    image: new AssetImage(
                      'asset/ramji.jpg',
                    ),
                  ),
                ),
                child: Column(children: [
                  Text(
                    "History Of RAM Mandir",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  Image.asset(
                    "asset/history.jpg",
                    height: 250,
                    width: 340,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "The Ram Mandir (lit. 'Rama Temple') is a Hindu temple complex under construction in Ayodhya, Uttar Pradesh, India. Many Hindus believe that it is located at the site of Ram Janmabhoomi, the mythical birthplace of Rama, a principal deity of Hinduism.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "The site is the former location of the Babri Masjid mosque, which was built in the 16th century CE. The idols of Rama and Sita were placed in the mosque in 1949, before it was attacked and demolished in 1992.In 2019, the Supreme Court of India delivered the verdict to give the disputed land to Hindus for construction of a temple, while Muslims were given land nearby in Dhannipur to construct a mosque.The court referenced a report from the Archaeological Survey of India (ASI) as evidence suggesting the presence of a structure.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Read()),
                      );
                    },
                    child: Text(
                      'Read More',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ]))));
  }
}
