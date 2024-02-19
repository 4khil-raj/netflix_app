String apikey = 'ee30afeec6246f2456470aff35991ee6';
String homeCard =
    'https://image.tmdb.org/t/p/w500/9GBhzXMFjgcZ3FdR9w3bUMMTps5.jpg';

class api {
  String nowPlaying =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=$apikey';

  String popular = 'https://api.themoviedb.org/3/movie/popular?api_key=$apikey';

  String toprated =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=ee30afeec6246f2456470aff35991ee6';

  String upcoming =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=ee30afeec6246f2456470aff35991ee6';
}
