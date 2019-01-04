import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:rmdb_app/models/movie.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Movie,
  Collection,
  Genre,
  Images,
  Image,
  ProductionCompany,
  ProductionCountry,
  SpokenLanguage,
  Videos,
  Video,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          // add this builder factory
          const FullType(BuiltList, const [const FullType(Movie)]),
          () => ListBuilder<Movie>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
