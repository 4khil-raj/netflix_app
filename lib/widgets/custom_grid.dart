// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:netflix_clone/apikey/api.dart';

class CustomGrid extends StatefulWidget {
  String title;
  List<Map<String, dynamic>> gridList;
  CustomGrid({super.key, required this.title, required this.gridList});

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text('${widget.title}'),
          SizedBox(
            height: 1000,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 290,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                            imageApi + widget.gridList[index]['poster_path']),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
