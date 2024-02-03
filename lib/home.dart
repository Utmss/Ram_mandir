import 'package:flutter/material.dart';
import 'package:flutter_application_1/bhajan.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/image.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 164, 76),
        title: Text(
          "Bhagwan Ram",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "About",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  decoration: TextDecoration.underline),
            ),
            Image.asset(
              "asset/ramji.jpg",
              height: 220,
              width: 300,
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                  "Lord Rama is known as the seventh incarnation of Lord Vishnu. Rama, the perfect avatar of the Supreme Protector Vishnu, has always been popular among the Hindu deities. Rama is the symbol of courtesy and virtue, a man of values and morals. Ramachandra is Maryada Purushottama, which means the perfect man. Lord Rama is considered to have taken birth on the earth to destroy the evil forces of the age."),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                  "Rama was born to Kausalya and Dasharatha in Ayodhya, the capital of the Kingdom of Kosala. His siblings included Lakshmana, Bharata, and Shatrughna. He married Sita. Though born in a royal family, Rama's life is described in the Hindu texts as one challenged by unexpected changes, such as an exile into impoverished and difficult circumstances, and challenges of ethical questions and moral dilemmas.Of all his travails, the most notable is the kidnapping of Sita by demon-king Ravana, followed by the determined and epic efforts of Rama and Lakshmana to gain her freedom and destroy the evil Ravana against great odds."),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => History()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 235, 164, 76),
                  ),
                  child: Text("-> History",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Images()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 235, 164, 76),
                  ),
                  child: Text("-> Images",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BhagwanRamMusicPlayer()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 235, 164, 76),
                  ),
                  child: Text("-> Bhajan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
