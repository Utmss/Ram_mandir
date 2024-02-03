import 'package:flutter/material.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 164, 76),
        title: Text(
          "History Of RAM Mandir",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ScrollableText(),
    );
  }
}

class ScrollableText extends StatelessWidget {
  final String longText =
      'Ayodhya is considered the birthplace of Lord Rama according to Hindu tradition. '
      'The original temple, said to be built by King Vikramaditya, stood for centuries. '
      'However, it faced destruction and rebuilding multiple times due to various historical events. '
      'In the 16th century, the Mughal Emperor Babur built a mosque known as Babri Masjid in Ayodhya in 1528. '
      'The mosque was constructed on the site where Hindus believe the Ram Janmabhoomi (birthplace of Lord Rama) existed. '
      'The dispute over the site escalated in the 19th and 20th centuries.'
      'In 1992, a large gathering of Hindus gathered at the disputed site, resulting in the demolition of the Babri Masjid.'
      'The demolition led to widespread communal tensions and sparked a legal battle over the ownership of the land. '
      'In 2010, the Allahabad High Court delivered a verdict on the Ayodhya dispute. The court divided the disputed land into three parts, with one-third awarded to the Sunni Waqf Board, one-third to the Nirmohi Akhara, and one-third to the party representing Lord Rama (represented by the Hindu deity'
      'The parties involved, including the Sunni Waqf Board and the Nirmohi Akhara, appealed against the verdict '
      'In November 2019, the Supreme Court of India delivered a historic judgment in the Ayodhya dispute. '
      'The court ruled in favor of the construction of a Hindu temple at the disputed site.'
      'The Sunni Waqf Board was granted an alternative piece of land for the construction of a mosque. '
      'After the Supreme Courts verdict, the construction of the Ram Mandir began at the disputed site in Ayodhya. '
      'The groundbreaking ceremony took place on August 5, 2020, and the construction has been ongoing since then.'
      'The construction of the Ram Mandir is a significant development, bringing both religious and political dimensions. It marks the culmination of a long-standing dispute and is a symbol of historical and cultural heritage for many Hindus. ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset('asset/history2.jpg'),
              Divider(
                color: Colors.black,
              ),
              Text(
                longText,
                style: TextStyle(fontSize: 18.0),
              ),
              Divider(
                color: Colors.black,
              ),
              Text(
                "THANKS",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
