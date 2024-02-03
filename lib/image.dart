import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  final List<String> ramImages = [
    'https://www.bhagwanwallpapers.com/uploads/2023/03/ram-ji-bhagwan-ji-hd-photo-picture-download-mwu1-1680188802.jpg',
    'https://www.bhagwankiphotos.com/wp-content/uploads/2018/12/Sita-Ram-Bhagwan-Lord-Rama-Image-Photo-Pics.jpg',
    'https://www.bhagwanwallpapers.com/uploads/2023/03/bhagwan-ram-ayodhya-hd-image-pic-download-azoz-1680188803.jpg',
    'https://www.bhaktiphotos.com/wp-content/uploads/2018/04/HD-Beautiful-Ram-Sita-Photo.jpg'
  ];
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
        body: ListView.builder(
            itemCount: ramImages.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    ramImages[index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ));
            }));
  }
}
