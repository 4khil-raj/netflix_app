import 'package:flutter/material.dart';
import 'package:netflix_clone/apikey/api.dart';

Stack cardHome() {
  return Stack(
    children: [
      Container(
        height: 400,
        width: 330,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(homeCard)),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 0.5, color: Colors.white)),
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: 324,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              playButtonHome(),
              homeButton(),
            ],
          ))
    ],
  );
}

TextButton homeButton() {
  return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      label: const Text(
        "My List",
        style: TextStyle(color: Colors.white),
      ));
}

TextButton playButtonHome() {
  return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll.),
      icon: Icon(
        Icons.play_arrow,
        color: Colors.black,
      ),
      label: const Text(
        "My List",
        style: TextStyle(color: Colors.white),
      ));
}
