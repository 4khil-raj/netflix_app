import 'dart:convert';

import 'package:netflix_clone/apikey/api.dart';
import 'package:http/http.dart' as http;

List<Map<String, dynamic>> nowplayinglist = [];

Future<void> nowPlaying() async {
  var nowPlayingResponse = await http.get(Uri.parse(api().nowPlaying));
  if (nowPlayingResponse.statusCode == 200) {
    var data = jsonDecode(nowPlayingResponse.body);
    var nowPlayingjson = data['results'];
    for (var i = 0; i < nowPlayingjson.length; i++) {
      nowplayinglist.add({
        'title': nowPlayingjson[i]['title'],
        'backdrop_path': nowPlayingjson[i]['backdrop_path'],
        'overview': nowPlayingjson[i]['overview'],
        'vote_average': nowPlayingjson[i]['vote_average'],
        'relese_data': nowPlayingjson[i]['relese_data'],
        'poster_path': nowPlayingjson[i]['poster_path'],
        'id': nowPlayingjson[i]['id'],
        'popularity': nowPlayingjson[i]['popularity'],
        'indexno': i
      });
    }
  }
}
