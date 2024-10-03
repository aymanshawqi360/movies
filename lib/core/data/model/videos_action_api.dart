class VideosActionApi {
  late String iso_639_1;
  late String iso_3166_1;
  late String name;
  late String key;
  late String site;
  late int size;
  late String type;
  late bool official;
  late String published_at;
  late String id;

  VideosActionApi.fromjson(Map<String, dynamic> json) {
    iso_639_1 = json["iso_639_1"];
    iso_3166_1 = json["iso_3166_1"];
    name = json["name"];
    key = json["key"];
    site = json["site"];
    size = json["size"];
    type = json["type"];
    official = json["official"];
    published_at = json["published_at"];
    id = json["id"];
  }
}
