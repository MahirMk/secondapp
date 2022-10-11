import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Slider"),
    ),
      body:  Column(
        children: [
          CarouselSlider(
              items:[
                Image.asset("img/cover.png",width: 300.0,height: 300.0,),
                Image.asset("img/youtube.png",width: 600.0,height: 600.0,),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
          ),
        ],
      ),
    );
  }
}
