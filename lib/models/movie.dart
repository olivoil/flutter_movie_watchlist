library movie;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rmdb_app/models/serializers.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {
  Movie._();

  factory Movie([updates(MovieBuilder b)]) = _$Movie;

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

  @nullable
  @BuiltValueField(wireName: 'adult')
  bool get adult;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  @nullable
  @BuiltValueField(wireName: 'belongs_to_collection')
  Collection get belongsToCollection;

  @nullable
  @BuiltValueField(wireName: 'budget')
  int get budget;

  @nullable
  @BuiltValueField(wireName: 'genres')
  BuiltList<Genre> get genres;

  @nullable
  @BuiltValueField(wireName: 'homepage')
  String get homepage;

  @nullable
  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @nullable
  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  @nullable
  @BuiltValueField(wireName: 'overview')
  String get overview;

  @nullable
  @BuiltValueField(wireName: 'popularity')
  double get popularity;

  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @nullable
  @BuiltValueField(wireName: 'production_companies')
  BuiltList<ProductionCompany> get productionCompanies;

  @nullable
  @BuiltValueField(wireName: 'production_countries')
  BuiltList<ProductionCountry> get productionCountries;

  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  @nullable
  @BuiltValueField(wireName: 'revenue')
  int get revenue;

  @nullable
  @BuiltValueField(wireName: 'runtime')
  int get runtime;

  @nullable
  @BuiltValueField(wireName: 'spoken_languages')
  BuiltList<SpokenLanguage> get spokenLanguages;

  @nullable
  @BuiltValueField(wireName: 'status')
  String get status;

  @nullable
  @BuiltValueField(wireName: 'tagline')
  String get tagline;

  @nullable
  @BuiltValueField(wireName: 'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'video')
  bool get video;

  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @nullable
  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  @nullable
  @BuiltValueField(wireName: 'videos')
  Videos get videos;

  @nullable
  @BuiltValueField(wireName: 'images')
  Images get images;

  @nullable
  String toJson() {
    return json.encode(serializers.serializeWith(Movie.serializer, this));
  }

  @memoized
  List<String> get imageUrls {
    if (images != null && images.posters != null) {
      return images.posters
          .map((Image p) => 'https://image.tmdb.org/t/p/w1280/${p.filePath}')
          .toList();
    }

    return <String>[];
  }

  static Movie fromJson(String jsonString) {
    return serializers.deserializeWith(
        Movie.serializer, json.decode(jsonString));
  }

  static Serializer<Movie> get serializer => _$movieSerializer;
}

abstract class Collection implements Built<Collection, CollectionBuilder> {
  Collection._();

  factory Collection([updates(CollectionBuilder b)]) = _$Collection;

  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  String toJson() {
    return json.encode(serializers.serializeWith(Collection.serializer, this));
  }

  static Collection fromJson(String jsonString) {
    return serializers.deserializeWith(
        Collection.serializer, json.decode(jsonString));
  }

  static Serializer<Collection> get serializer => _$collectionSerializer;
}

abstract class Genre implements Built<Genre, GenreBuilder> {
  Genre._();

  factory Genre([updates(GenreBuilder b)]) = _$Genre;

  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  String toJson() {
    return json.encode(serializers.serializeWith(Genre.serializer, this));
  }

  static Genre fromJson(String jsonString) {
    return serializers.deserializeWith(
        Genre.serializer, json.decode(jsonString));
  }

  static Serializer<Genre> get serializer => _$genreSerializer;
}

abstract class Images implements Built<Images, ImagesBuilder> {
  Images._();

  factory Images([updates(ImagesBuilder b)]) = _$Images;

  @nullable
  @BuiltValueField(wireName: 'backdrops')
  BuiltList<Image> get backdrops;

  @nullable
  @BuiltValueField(wireName: 'posters')
  BuiltList<Image> get posters;

  String toJson() {
    return json.encode(serializers.serializeWith(Images.serializer, this));
  }

  static Images fromJson(String jsonString) {
    return serializers.deserializeWith(
        Images.serializer, json.decode(jsonString));
  }

  static Serializer<Images> get serializer => _$imagesSerializer;
}

abstract class ProductionCompany
    implements Built<ProductionCompany, ProductionCompanyBuilder> {
  ProductionCompany._();

  factory ProductionCompany([updates(ProductionCompanyBuilder b)]) =
      _$ProductionCompany;

  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'logo_path')
  String get logoPath;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'origin_country')
  String get originCountry;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProductionCompany.serializer, this));
  }

  static ProductionCompany fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductionCompany.serializer, json.decode(jsonString));
  }

  static Serializer<ProductionCompany> get serializer =>
      _$productionCompanySerializer;
}

abstract class ProductionCountry
    implements Built<ProductionCountry, ProductionCountryBuilder> {
  ProductionCountry._();

  factory ProductionCountry([updates(ProductionCountryBuilder b)]) =
      _$ProductionCountry;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get iso31661;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProductionCountry.serializer, this));
  }

  static ProductionCountry fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductionCountry.serializer, json.decode(jsonString));
  }

  static Serializer<ProductionCountry> get serializer =>
      _$productionCountrySerializer;
}

abstract class SpokenLanguage
    implements Built<SpokenLanguage, SpokenLanguageBuilder> {
  SpokenLanguage._();

  factory SpokenLanguage([updates(SpokenLanguageBuilder b)]) = _$SpokenLanguage;

  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get iso6391;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SpokenLanguage.serializer, this));
  }

  static SpokenLanguage fromJson(String jsonString) {
    return serializers.deserializeWith(
        SpokenLanguage.serializer, json.decode(jsonString));
  }

  static Serializer<SpokenLanguage> get serializer =>
      _$spokenLanguageSerializer;
}

abstract class Videos implements Built<Videos, VideosBuilder> {
  Videos._();

  factory Videos([updates(VideosBuilder b)]) = _$Videos;

  @BuiltValueField(wireName: 'results')
  BuiltList<Video> get results;

  String toJson() {
    return json.encode(serializers.serializeWith(Videos.serializer, this));
  }

  static Videos fromJson(String jsonString) {
    return serializers.deserializeWith(
        Videos.serializer, json.decode(jsonString));
  }

  static Serializer<Videos> get serializer => _$videosSerializer;
}

abstract class Video implements Built<Video, VideoBuilder> {
  Video._();

  factory Video([updates(VideoBuilder b)]) = _$Video;

  @BuiltValueField(wireName: 'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get iso6391;

  @nullable
  @BuiltValueField(wireName: 'iso_3166_1')
  String get iso31661;

  @nullable
  @BuiltValueField(wireName: 'key')
  String get key;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'site')
  String get site;

  @nullable
  @BuiltValueField(wireName: 'size')
  int get size;

  @nullable
  @BuiltValueField(wireName: 'type')
  String get type;

  String toJson() {
    return json.encode(serializers.serializeWith(Video.serializer, this));
  }

  static Video fromJson(String jsonString) {
    return serializers.deserializeWith(
        Video.serializer, json.decode(jsonString));
  }

  static Serializer<Video> get serializer => _$videoSerializer;
}

abstract class Image implements Built<Image, ImageBuilder> {
  Image._();

  factory Image([updates(ImageBuilder b)]) = _$Image;

  @nullable
  @BuiltValueField(wireName: 'aspect_ratio')
  double get aspectRatio;

  @nullable
  @BuiltValueField(wireName: 'file_path')
  String get filePath;

  @nullable
  @BuiltValueField(wireName: 'height')
  int get height;

  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get iso6391;

  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @nullable
  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  @nullable
  @BuiltValueField(wireName: 'width')
  int get width;

  String toJson() {
    return json.encode(serializers.serializeWith(Image.serializer, this));
  }

  static Image fromJson(String jsonString) {
    return serializers.deserializeWith(
        Image.serializer, json.decode(jsonString));
  }

  static Serializer<Image> get serializer => _$imageSerializer;
}
