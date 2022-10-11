import 'package:flutter/material.dart';

class ImageExample extends StatefulWidget {
  @override
  State<ImageExample> createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.star,size: 150.0,color: Colors.yellow.shade900),
            Image.asset("img/cover.png",width: 100.0,height: 100.0,),
            Image.network("https://www.logodesign.net/images/nature-logo.png"),
            FadeInImage.assetNetwork(
              placeholder: "img/cover.png",
              image: "https://image.shutterstock.com/image-vector/eye-vision-logo-design-icon-260nw-1656429649.jpg",
            )
          ],
        ),
      ),
    );
  }
}
