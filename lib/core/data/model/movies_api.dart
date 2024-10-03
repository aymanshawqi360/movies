class MoviesApi {
  late int id;
  late String originalLanguage;
  late String originalTitle;
  late String overview;
  late List<dynamic> genreIds;
  late bool adult;
  late String backdropPath;
  late String overvieww;
  late dynamic popularity;
  late String posterPath;
  late String releaseDate;
  late String title;
  late dynamic voteAverage;
  late int voteCount;

  MoviesApi.fromjson(Map<String, dynamic> json) {
    id = json["id"];
    originalLanguage = json["original_language"];
    originalTitle = json["original_title"];
    overview = json["overview"];
    genreIds = json["genre_ids"];
    adult = json["adult"];
    backdropPath = json["backdrop_path"];
    overvieww = json["overview"];
    popularity = json["popularity"];
    posterPath = json["poster_path"];
    releaseDate = json["release_date"];
    title = json["title"];
    voteAverage = json["vote_average"];
    voteCount = json["vote_count"];
  }

  map(String Function(dynamic movie) param0) {}

  Object? toJson() {
    return null;
  }

  static fromJson(jsonDecode) {}

  // where(Function(dynamic movie) param0) {}
}
