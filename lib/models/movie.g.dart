// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();
Serializer<Collection> _$collectionSerializer = new _$CollectionSerializer();
Serializer<Genre> _$genreSerializer = new _$GenreSerializer();
Serializer<Images> _$imagesSerializer = new _$ImagesSerializer();
Serializer<ProductionCompany> _$productionCompanySerializer =
    new _$ProductionCompanySerializer();
Serializer<ProductionCountry> _$productionCountrySerializer =
    new _$ProductionCountrySerializer();
Serializer<SpokenLanguage> _$spokenLanguageSerializer =
    new _$SpokenLanguageSerializer();
Serializer<Videos> _$videosSerializer = new _$VideosSerializer();
Serializer<Video> _$videoSerializer = new _$VideoSerializer();
Serializer<Image> _$imageSerializer = new _$ImageSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
    ];
    if (object.adult != null) {
      result
        ..add('adult')
        ..add(serializers.serialize(object.adult,
            specifiedType: const FullType(bool)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.belongsToCollection != null) {
      result
        ..add('belongs_to_collection')
        ..add(serializers.serialize(object.belongsToCollection,
            specifiedType: const FullType(Collection)));
    }
    if (object.budget != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(object.budget,
            specifiedType: const FullType(int)));
    }
    if (object.genres != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(object.genres,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Genre)])));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.originalLanguage != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(object.originalLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.originalTitle != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(object.originalTitle,
            specifiedType: const FullType(String)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.productionCompanies != null) {
      result
        ..add('production_companies')
        ..add(serializers.serialize(object.productionCompanies,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCompany)])));
    }
    if (object.productionCountries != null) {
      result
        ..add('production_countries')
        ..add(serializers.serialize(object.productionCountries,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCountry)])));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    if (object.revenue != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(object.revenue,
            specifiedType: const FullType(int)));
    }
    if (object.runtime != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(object.runtime,
            specifiedType: const FullType(int)));
    }
    if (object.spokenLanguages != null) {
      result
        ..add('spoken_languages')
        ..add(serializers.serialize(object.spokenLanguages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SpokenLanguage)])));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.tagline != null) {
      result
        ..add('tagline')
        ..add(serializers.serialize(object.tagline,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.video != null) {
      result
        ..add('video')
        ..add(serializers.serialize(object.video,
            specifiedType: const FullType(bool)));
    }
    if (object.voteAverage != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.voteAverage,
            specifiedType: const FullType(double)));
    }
    if (object.voteCount != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(object.voteCount,
            specifiedType: const FullType(int)));
    }
    if (object.videos != null) {
      result
        ..add('videos')
        ..add(serializers.serialize(object.videos,
            specifiedType: const FullType(Videos)));
    }
    if (object.images != null) {
      result
        ..add('images')
        ..add(serializers.serialize(object.images,
            specifiedType: const FullType(Images)));
    }

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'belongs_to_collection':
          result.belongsToCollection.replace(serializers.deserialize(value,
              specifiedType: const FullType(Collection)) as Collection);
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Genre)]))
              as BuiltList);
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_companies':
          result.productionCompanies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCompany)]))
              as BuiltList);
          break;
        case 'production_countries':
          result.productionCountries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCountry)]))
              as BuiltList);
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'spoken_languages':
          result.spokenLanguages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpokenLanguage)]))
              as BuiltList);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
              specifiedType: const FullType(Videos)) as Videos);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(Images)) as Images);
          break;
      }
    }

    return result.build();
  }
}

class _$CollectionSerializer implements StructuredSerializer<Collection> {
  @override
  final Iterable<Type> types = const [Collection, _$Collection];
  @override
  final String wireName = 'Collection';

  @override
  Iterable serialize(Serializers serializers, Collection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Collection deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GenreSerializer implements StructuredSerializer<Genre> {
  @override
  final Iterable<Type> types = const [Genre, _$Genre];
  @override
  final String wireName = 'Genre';

  @override
  Iterable serialize(Serializers serializers, Genre object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Genre deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImagesSerializer implements StructuredSerializer<Images> {
  @override
  final Iterable<Type> types = const [Images, _$Images];
  @override
  final String wireName = 'Images';

  @override
  Iterable serialize(Serializers serializers, Images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.backdrops != null) {
      result
        ..add('backdrops')
        ..add(serializers.serialize(object.backdrops,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Image)])));
    }
    if (object.posters != null) {
      result
        ..add('posters')
        ..add(serializers.serialize(object.posters,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Image)])));
    }

    return result;
  }

  @override
  Images deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'backdrops':
          result.backdrops.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Image)]))
              as BuiltList);
          break;
        case 'posters':
          result.posters.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Image)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCompanySerializer
    implements StructuredSerializer<ProductionCompany> {
  @override
  final Iterable<Type> types = const [ProductionCompany, _$ProductionCompany];
  @override
  final String wireName = 'ProductionCompany';

  @override
  Iterable serialize(Serializers serializers, ProductionCompany object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.logoPath != null) {
      result
        ..add('logo_path')
        ..add(serializers.serialize(object.logoPath,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.originCountry != null) {
      result
        ..add('origin_country')
        ..add(serializers.serialize(object.originCountry,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ProductionCompany deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logo_path':
          result.logoPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_country':
          result.originCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCountrySerializer
    implements StructuredSerializer<ProductionCountry> {
  @override
  final Iterable<Type> types = const [ProductionCountry, _$ProductionCountry];
  @override
  final String wireName = 'ProductionCountry';

  @override
  Iterable serialize(Serializers serializers, ProductionCountry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'iso_3166_1',
      serializers.serialize(object.iso31661,
          specifiedType: const FullType(String)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ProductionCountry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCountryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_3166_1':
          result.iso31661 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SpokenLanguageSerializer
    implements StructuredSerializer<SpokenLanguage> {
  @override
  final Iterable<Type> types = const [SpokenLanguage, _$SpokenLanguage];
  @override
  final String wireName = 'SpokenLanguage';

  @override
  Iterable serialize(Serializers serializers, SpokenLanguage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.iso6391 != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.iso6391,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SpokenLanguage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpokenLanguageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_639_1':
          result.iso6391 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VideosSerializer implements StructuredSerializer<Videos> {
  @override
  final Iterable<Type> types = const [Videos, _$Videos];
  @override
  final String wireName = 'Videos';

  @override
  Iterable serialize(Serializers serializers, Videos object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Video)])),
    ];

    return result;
  }

  @override
  Videos deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Video)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$VideoSerializer implements StructuredSerializer<Video> {
  @override
  final Iterable<Type> types = const [Video, _$Video];
  @override
  final String wireName = 'Video';

  @override
  Iterable serialize(Serializers serializers, Video object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.iso6391 != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.iso6391,
            specifiedType: const FullType(String)));
    }
    if (object.iso31661 != null) {
      result
        ..add('iso_3166_1')
        ..add(serializers.serialize(object.iso31661,
            specifiedType: const FullType(String)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.site != null) {
      result
        ..add('site')
        ..add(serializers.serialize(object.site,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Video deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.iso6391 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_3166_1':
          result.iso31661 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageSerializer implements StructuredSerializer<Image> {
  @override
  final Iterable<Type> types = const [Image, _$Image];
  @override
  final String wireName = 'Image';

  @override
  Iterable serialize(Serializers serializers, Image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.aspectRatio != null) {
      result
        ..add('aspect_ratio')
        ..add(serializers.serialize(object.aspectRatio,
            specifiedType: const FullType(double)));
    }
    if (object.filePath != null) {
      result
        ..add('file_path')
        ..add(serializers.serialize(object.filePath,
            specifiedType: const FullType(String)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.iso6391 != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.iso6391,
            specifiedType: const FullType(String)));
    }
    if (object.voteAverage != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.voteAverage,
            specifiedType: const FullType(double)));
    }
    if (object.voteCount != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(object.voteCount,
            specifiedType: const FullType(int)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Image deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aspect_ratio':
          result.aspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'file_path':
          result.filePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iso_639_1':
          result.iso6391 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final int id;
  @override
  final String imdbId;
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final Collection belongsToCollection;
  @override
  final int budget;
  @override
  final BuiltList<Genre> genres;
  @override
  final String homepage;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final BuiltList<ProductionCompany> productionCompanies;
  @override
  final BuiltList<ProductionCountry> productionCountries;
  @override
  final String releaseDate;
  @override
  final int revenue;
  @override
  final int runtime;
  @override
  final BuiltList<SpokenLanguage> spokenLanguages;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int voteCount;
  @override
  final Videos videos;
  @override
  final Images images;
  List<String> __imageUrls;

  factory _$Movie([void updates(MovieBuilder b)]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.imdbId,
      this.adult,
      this.backdropPath,
      this.belongsToCollection,
      this.budget,
      this.genres,
      this.homepage,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.releaseDate,
      this.revenue,
      this.runtime,
      this.spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
      this.videos,
      this.images})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (imdbId == null) {
      throw new BuiltValueNullFieldError('Movie', 'imdbId');
    }
  }

  @override
  List<String> get imageUrls => __imageUrls ??= super.imageUrls;

  @override
  Movie rebuild(void updates(MovieBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        imdbId == other.imdbId &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        belongsToCollection == other.belongsToCollection &&
        budget == other.budget &&
        genres == other.genres &&
        homepage == other.homepage &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        productionCompanies == other.productionCompanies &&
        productionCountries == other.productionCountries &&
        releaseDate == other.releaseDate &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        spokenLanguages == other.spokenLanguages &&
        status == other.status &&
        tagline == other.tagline &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        videos == other.videos &&
        images == other.images;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), imdbId.hashCode), adult.hashCode), backdropPath.hashCode), belongsToCollection.hashCode), budget.hashCode), genres.hashCode), homepage.hashCode),
                                                                                originalLanguage.hashCode),
                                                                            originalTitle.hashCode),
                                                                        overview.hashCode),
                                                                    popularity.hashCode),
                                                                posterPath.hashCode),
                                                            productionCompanies.hashCode),
                                                        productionCountries.hashCode),
                                                    releaseDate.hashCode),
                                                revenue.hashCode),
                                            runtime.hashCode),
                                        spokenLanguages.hashCode),
                                    status.hashCode),
                                tagline.hashCode),
                            title.hashCode),
                        video.hashCode),
                    voteAverage.hashCode),
                voteCount.hashCode),
            videos.hashCode),
        images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('belongsToCollection', belongsToCollection)
          ..add('budget', budget)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('productionCompanies', productionCompanies)
          ..add('productionCountries', productionCountries)
          ..add('releaseDate', releaseDate)
          ..add('revenue', revenue)
          ..add('runtime', runtime)
          ..add('spokenLanguages', spokenLanguages)
          ..add('status', status)
          ..add('tagline', tagline)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('videos', videos)
          ..add('images', images))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  CollectionBuilder _belongsToCollection;
  CollectionBuilder get belongsToCollection =>
      _$this._belongsToCollection ??= new CollectionBuilder();
  set belongsToCollection(CollectionBuilder belongsToCollection) =>
      _$this._belongsToCollection = belongsToCollection;

  int _budget;
  int get budget => _$this._budget;
  set budget(int budget) => _$this._budget = budget;

  ListBuilder<Genre> _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre> genres) => _$this._genres = genres;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  ListBuilder<ProductionCompany> _productionCompanies;
  ListBuilder<ProductionCompany> get productionCompanies =>
      _$this._productionCompanies ??= new ListBuilder<ProductionCompany>();
  set productionCompanies(ListBuilder<ProductionCompany> productionCompanies) =>
      _$this._productionCompanies = productionCompanies;

  ListBuilder<ProductionCountry> _productionCountries;
  ListBuilder<ProductionCountry> get productionCountries =>
      _$this._productionCountries ??= new ListBuilder<ProductionCountry>();
  set productionCountries(ListBuilder<ProductionCountry> productionCountries) =>
      _$this._productionCountries = productionCountries;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  int _revenue;
  int get revenue => _$this._revenue;
  set revenue(int revenue) => _$this._revenue = revenue;

  int _runtime;
  int get runtime => _$this._runtime;
  set runtime(int runtime) => _$this._runtime = runtime;

  ListBuilder<SpokenLanguage> _spokenLanguages;
  ListBuilder<SpokenLanguage> get spokenLanguages =>
      _$this._spokenLanguages ??= new ListBuilder<SpokenLanguage>();
  set spokenLanguages(ListBuilder<SpokenLanguage> spokenLanguages) =>
      _$this._spokenLanguages = spokenLanguages;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _tagline;
  String get tagline => _$this._tagline;
  set tagline(String tagline) => _$this._tagline = tagline;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _video;
  bool get video => _$this._video;
  set video(bool video) => _$this._video = video;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  VideosBuilder _videos;
  VideosBuilder get videos => _$this._videos ??= new VideosBuilder();
  set videos(VideosBuilder videos) => _$this._videos = videos;

  ImagesBuilder _images;
  ImagesBuilder get images => _$this._images ??= new ImagesBuilder();
  set images(ImagesBuilder images) => _$this._images = images;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _imdbId = _$v.imdbId;
      _adult = _$v.adult;
      _backdropPath = _$v.backdropPath;
      _belongsToCollection = _$v.belongsToCollection?.toBuilder();
      _budget = _$v.budget;
      _genres = _$v.genres?.toBuilder();
      _homepage = _$v.homepage;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _overview = _$v.overview;
      _popularity = _$v.popularity;
      _posterPath = _$v.posterPath;
      _productionCompanies = _$v.productionCompanies?.toBuilder();
      _productionCountries = _$v.productionCountries?.toBuilder();
      _releaseDate = _$v.releaseDate;
      _revenue = _$v.revenue;
      _runtime = _$v.runtime;
      _spokenLanguages = _$v.spokenLanguages?.toBuilder();
      _status = _$v.status;
      _tagline = _$v.tagline;
      _title = _$v.title;
      _video = _$v.video;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _videos = _$v.videos?.toBuilder();
      _images = _$v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void updates(MovieBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              id: id,
              imdbId: imdbId,
              adult: adult,
              backdropPath: backdropPath,
              belongsToCollection: _belongsToCollection?.build(),
              budget: budget,
              genres: _genres?.build(),
              homepage: homepage,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              overview: overview,
              popularity: popularity,
              posterPath: posterPath,
              productionCompanies: _productionCompanies?.build(),
              productionCountries: _productionCountries?.build(),
              releaseDate: releaseDate,
              revenue: revenue,
              runtime: runtime,
              spokenLanguages: _spokenLanguages?.build(),
              status: status,
              tagline: tagline,
              title: title,
              video: video,
              voteAverage: voteAverage,
              voteCount: voteCount,
              videos: _videos?.build(),
              images: _images?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'belongsToCollection';
        _belongsToCollection?.build();

        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'productionCompanies';
        _productionCompanies?.build();
        _$failedField = 'productionCountries';
        _productionCountries?.build();

        _$failedField = 'spokenLanguages';
        _spokenLanguages?.build();

        _$failedField = 'videos';
        _videos?.build();
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Collection extends Collection {
  @override
  final int id;
  @override
  final String name;
  @override
  final String posterPath;
  @override
  final String backdropPath;

  factory _$Collection([void updates(CollectionBuilder b)]) =>
      (new CollectionBuilder()..update(updates)).build();

  _$Collection._({this.id, this.name, this.posterPath, this.backdropPath})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Collection', 'id');
    }
  }

  @override
  Collection rebuild(void updates(CollectionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionBuilder toBuilder() => new CollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Collection &&
        id == other.id &&
        name == other.name &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), posterPath.hashCode),
        backdropPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Collection')
          ..add('id', id)
          ..add('name', name)
          ..add('posterPath', posterPath)
          ..add('backdropPath', backdropPath))
        .toString();
  }
}

class CollectionBuilder implements Builder<Collection, CollectionBuilder> {
  _$Collection _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  CollectionBuilder();

  CollectionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _posterPath = _$v.posterPath;
      _backdropPath = _$v.backdropPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Collection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Collection;
  }

  @override
  void update(void updates(CollectionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Collection build() {
    final _$result = _$v ??
        new _$Collection._(
            id: id,
            name: name,
            posterPath: posterPath,
            backdropPath: backdropPath);
    replace(_$result);
    return _$result;
  }
}

class _$Genre extends Genre {
  @override
  final int id;
  @override
  final String name;

  factory _$Genre([void updates(GenreBuilder b)]) =>
      (new GenreBuilder()..update(updates)).build();

  _$Genre._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Genre', 'id');
    }
  }

  @override
  Genre rebuild(void updates(GenreBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreBuilder toBuilder() => new GenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genre && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Genre')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenreBuilder implements Builder<Genre, GenreBuilder> {
  _$Genre _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GenreBuilder();

  GenreBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genre other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Genre;
  }

  @override
  void update(void updates(GenreBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Genre build() {
    final _$result = _$v ?? new _$Genre._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$Images extends Images {
  @override
  final BuiltList<Image> backdrops;
  @override
  final BuiltList<Image> posters;

  factory _$Images([void updates(ImagesBuilder b)]) =>
      (new ImagesBuilder()..update(updates)).build();

  _$Images._({this.backdrops, this.posters}) : super._();

  @override
  Images rebuild(void updates(ImagesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesBuilder toBuilder() => new ImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Images &&
        backdrops == other.backdrops &&
        posters == other.posters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, backdrops.hashCode), posters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Images')
          ..add('backdrops', backdrops)
          ..add('posters', posters))
        .toString();
  }
}

class ImagesBuilder implements Builder<Images, ImagesBuilder> {
  _$Images _$v;

  ListBuilder<Image> _backdrops;
  ListBuilder<Image> get backdrops =>
      _$this._backdrops ??= new ListBuilder<Image>();
  set backdrops(ListBuilder<Image> backdrops) => _$this._backdrops = backdrops;

  ListBuilder<Image> _posters;
  ListBuilder<Image> get posters =>
      _$this._posters ??= new ListBuilder<Image>();
  set posters(ListBuilder<Image> posters) => _$this._posters = posters;

  ImagesBuilder();

  ImagesBuilder get _$this {
    if (_$v != null) {
      _backdrops = _$v.backdrops?.toBuilder();
      _posters = _$v.posters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Images other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Images;
  }

  @override
  void update(void updates(ImagesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Images build() {
    _$Images _$result;
    try {
      _$result = _$v ??
          new _$Images._(
              backdrops: _backdrops?.build(), posters: _posters?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'backdrops';
        _backdrops?.build();
        _$failedField = 'posters';
        _posters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Images', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProductionCompany extends ProductionCompany {
  @override
  final int id;
  @override
  final String logoPath;
  @override
  final String name;
  @override
  final String originCountry;

  factory _$ProductionCompany([void updates(ProductionCompanyBuilder b)]) =>
      (new ProductionCompanyBuilder()..update(updates)).build();

  _$ProductionCompany._({this.id, this.logoPath, this.name, this.originCountry})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ProductionCompany', 'id');
    }
  }

  @override
  ProductionCompany rebuild(void updates(ProductionCompanyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCompanyBuilder toBuilder() =>
      new ProductionCompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCompany &&
        id == other.id &&
        logoPath == other.logoPath &&
        name == other.name &&
        originCountry == other.originCountry;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), logoPath.hashCode), name.hashCode),
        originCountry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCompany')
          ..add('id', id)
          ..add('logoPath', logoPath)
          ..add('name', name)
          ..add('originCountry', originCountry))
        .toString();
  }
}

class ProductionCompanyBuilder
    implements Builder<ProductionCompany, ProductionCompanyBuilder> {
  _$ProductionCompany _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _logoPath;
  String get logoPath => _$this._logoPath;
  set logoPath(String logoPath) => _$this._logoPath = logoPath;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _originCountry;
  String get originCountry => _$this._originCountry;
  set originCountry(String originCountry) =>
      _$this._originCountry = originCountry;

  ProductionCompanyBuilder();

  ProductionCompanyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _logoPath = _$v.logoPath;
      _name = _$v.name;
      _originCountry = _$v.originCountry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCompany other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCompany;
  }

  @override
  void update(void updates(ProductionCompanyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCompany build() {
    final _$result = _$v ??
        new _$ProductionCompany._(
            id: id,
            logoPath: logoPath,
            name: name,
            originCountry: originCountry);
    replace(_$result);
    return _$result;
  }
}

class _$ProductionCountry extends ProductionCountry {
  @override
  final String iso31661;
  @override
  final String name;

  factory _$ProductionCountry([void updates(ProductionCountryBuilder b)]) =>
      (new ProductionCountryBuilder()..update(updates)).build();

  _$ProductionCountry._({this.iso31661, this.name}) : super._() {
    if (iso31661 == null) {
      throw new BuiltValueNullFieldError('ProductionCountry', 'iso31661');
    }
  }

  @override
  ProductionCountry rebuild(void updates(ProductionCountryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCountryBuilder toBuilder() =>
      new ProductionCountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCountry &&
        iso31661 == other.iso31661 &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, iso31661.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCountry')
          ..add('iso31661', iso31661)
          ..add('name', name))
        .toString();
  }
}

class ProductionCountryBuilder
    implements Builder<ProductionCountry, ProductionCountryBuilder> {
  _$ProductionCountry _$v;

  String _iso31661;
  String get iso31661 => _$this._iso31661;
  set iso31661(String iso31661) => _$this._iso31661 = iso31661;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ProductionCountryBuilder();

  ProductionCountryBuilder get _$this {
    if (_$v != null) {
      _iso31661 = _$v.iso31661;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCountry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCountry;
  }

  @override
  void update(void updates(ProductionCountryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCountry build() {
    final _$result =
        _$v ?? new _$ProductionCountry._(iso31661: iso31661, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$SpokenLanguage extends SpokenLanguage {
  @override
  final String iso6391;
  @override
  final String name;

  factory _$SpokenLanguage([void updates(SpokenLanguageBuilder b)]) =>
      (new SpokenLanguageBuilder()..update(updates)).build();

  _$SpokenLanguage._({this.iso6391, this.name}) : super._();

  @override
  SpokenLanguage rebuild(void updates(SpokenLanguageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SpokenLanguageBuilder toBuilder() =>
      new SpokenLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpokenLanguage &&
        iso6391 == other.iso6391 &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, iso6391.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpokenLanguage')
          ..add('iso6391', iso6391)
          ..add('name', name))
        .toString();
  }
}

class SpokenLanguageBuilder
    implements Builder<SpokenLanguage, SpokenLanguageBuilder> {
  _$SpokenLanguage _$v;

  String _iso6391;
  String get iso6391 => _$this._iso6391;
  set iso6391(String iso6391) => _$this._iso6391 = iso6391;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SpokenLanguageBuilder();

  SpokenLanguageBuilder get _$this {
    if (_$v != null) {
      _iso6391 = _$v.iso6391;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpokenLanguage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpokenLanguage;
  }

  @override
  void update(void updates(SpokenLanguageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SpokenLanguage build() {
    final _$result =
        _$v ?? new _$SpokenLanguage._(iso6391: iso6391, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$Videos extends Videos {
  @override
  final BuiltList<Video> results;

  factory _$Videos([void updates(VideosBuilder b)]) =>
      (new VideosBuilder()..update(updates)).build();

  _$Videos._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('Videos', 'results');
    }
  }

  @override
  Videos rebuild(void updates(VideosBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosBuilder toBuilder() => new VideosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Videos && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Videos')..add('results', results))
        .toString();
  }
}

class VideosBuilder implements Builder<Videos, VideosBuilder> {
  _$Videos _$v;

  ListBuilder<Video> _results;
  ListBuilder<Video> get results =>
      _$this._results ??= new ListBuilder<Video>();
  set results(ListBuilder<Video> results) => _$this._results = results;

  VideosBuilder();

  VideosBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Videos other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Videos;
  }

  @override
  void update(void updates(VideosBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Videos build() {
    _$Videos _$result;
    try {
      _$result = _$v ?? new _$Videos._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Videos', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Video extends Video {
  @override
  final String id;
  @override
  final String iso6391;
  @override
  final String iso31661;
  @override
  final String key;
  @override
  final String name;
  @override
  final String site;
  @override
  final int size;
  @override
  final String type;

  factory _$Video([void updates(VideoBuilder b)]) =>
      (new VideoBuilder()..update(updates)).build();

  _$Video._(
      {this.id,
      this.iso6391,
      this.iso31661,
      this.key,
      this.name,
      this.site,
      this.size,
      this.type})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Video', 'id');
    }
  }

  @override
  Video rebuild(void updates(VideoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoBuilder toBuilder() => new VideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Video &&
        id == other.id &&
        iso6391 == other.iso6391 &&
        iso31661 == other.iso31661 &&
        key == other.key &&
        name == other.name &&
        site == other.site &&
        size == other.size &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), iso6391.hashCode),
                            iso31661.hashCode),
                        key.hashCode),
                    name.hashCode),
                site.hashCode),
            size.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Video')
          ..add('id', id)
          ..add('iso6391', iso6391)
          ..add('iso31661', iso31661)
          ..add('key', key)
          ..add('name', name)
          ..add('site', site)
          ..add('size', size)
          ..add('type', type))
        .toString();
  }
}

class VideoBuilder implements Builder<Video, VideoBuilder> {
  _$Video _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _iso6391;
  String get iso6391 => _$this._iso6391;
  set iso6391(String iso6391) => _$this._iso6391 = iso6391;

  String _iso31661;
  String get iso31661 => _$this._iso31661;
  set iso31661(String iso31661) => _$this._iso31661 = iso31661;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _site;
  String get site => _$this._site;
  set site(String site) => _$this._site = site;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  VideoBuilder();

  VideoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _iso6391 = _$v.iso6391;
      _iso31661 = _$v.iso31661;
      _key = _$v.key;
      _name = _$v.name;
      _site = _$v.site;
      _size = _$v.size;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Video other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Video;
  }

  @override
  void update(void updates(VideoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Video build() {
    final _$result = _$v ??
        new _$Video._(
            id: id,
            iso6391: iso6391,
            iso31661: iso31661,
            key: key,
            name: name,
            site: site,
            size: size,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$Image extends Image {
  @override
  final double aspectRatio;
  @override
  final String filePath;
  @override
  final int height;
  @override
  final String iso6391;
  @override
  final double voteAverage;
  @override
  final int voteCount;
  @override
  final int width;

  factory _$Image([void updates(ImageBuilder b)]) =>
      (new ImageBuilder()..update(updates)).build();

  _$Image._(
      {this.aspectRatio,
      this.filePath,
      this.height,
      this.iso6391,
      this.voteAverage,
      this.voteCount,
      this.width})
      : super._();

  @override
  Image rebuild(void updates(ImageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageBuilder toBuilder() => new ImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Image &&
        aspectRatio == other.aspectRatio &&
        filePath == other.filePath &&
        height == other.height &&
        iso6391 == other.iso6391 &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        width == other.width;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, aspectRatio.hashCode), filePath.hashCode),
                        height.hashCode),
                    iso6391.hashCode),
                voteAverage.hashCode),
            voteCount.hashCode),
        width.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Image')
          ..add('aspectRatio', aspectRatio)
          ..add('filePath', filePath)
          ..add('height', height)
          ..add('iso6391', iso6391)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('width', width))
        .toString();
  }
}

class ImageBuilder implements Builder<Image, ImageBuilder> {
  _$Image _$v;

  double _aspectRatio;
  double get aspectRatio => _$this._aspectRatio;
  set aspectRatio(double aspectRatio) => _$this._aspectRatio = aspectRatio;

  String _filePath;
  String get filePath => _$this._filePath;
  set filePath(String filePath) => _$this._filePath = filePath;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _iso6391;
  String get iso6391 => _$this._iso6391;
  set iso6391(String iso6391) => _$this._iso6391 = iso6391;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  ImageBuilder();

  ImageBuilder get _$this {
    if (_$v != null) {
      _aspectRatio = _$v.aspectRatio;
      _filePath = _$v.filePath;
      _height = _$v.height;
      _iso6391 = _$v.iso6391;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _width = _$v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Image other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Image;
  }

  @override
  void update(void updates(ImageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Image build() {
    final _$result = _$v ??
        new _$Image._(
            aspectRatio: aspectRatio,
            filePath: filePath,
            height: height,
            iso6391: iso6391,
            voteAverage: voteAverage,
            voteCount: voteCount,
            width: width);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
