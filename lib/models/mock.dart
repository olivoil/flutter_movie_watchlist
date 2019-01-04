import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:rmdb_app/models/movie.dart';
import 'package:rmdb_app/models/serializers.dart';

final String data = """
[
  {
    "adult": false,
    "backdrop_path": "/wDN3FIcQQ1HI7mz1OOKYHSQtaiE.jpg",
    "belongs_to_collection": {
      "id": 435259,
      "name": "Fantastic Beasts Collection",
      "poster_path": "/wsVseA7i3FqX24m26Z2gD3EtH4l.jpg",
      "backdrop_path": "/2Iripuf9j5vbROHNpkUUiWIIDxE.jpg"
    },
    "budget": 200000000,
    "genres": [
      {
        "id": 10751,
        "name": "Family"
      },
      {
        "id": 14,
        "name": "Fantasy"
      },
      {
        "id": 12,
        "name": "Adventure"
      }
    ],
    "homepage": "http://www.fantasticbeasts.com",
    "id": 338952,
    "imdb_id": "tt4123430",
    "original_language": "en",
    "original_title": "Fantastic Beasts: The Crimes of Grindelwald",
    "overview": "Gellert Grindelwald has escaped imprisonment and has begun gathering followers to his cause—elevating wizards above all non-magical beings. The only one capable of putting a stop to him is the wizard he once called his closest friend, Albus Dumbledore. However, Dumbledore will need to seek help from the wizard who had thwarted Grindelwald once before, his former student Newt Scamander, who agrees to help, unaware of the dangers that lie ahead. Lines are drawn as love and loyalty are tested, even among the truest friends and family, in an increasingly divided wizarding world.",
    "popularity": 134.687,
    "poster_path": "/kQKcbJ9uYkTQql2R8L4jTUz7l90.jpg",
    "production_companies": [
      {
        "id": 174,
        "logo_path": "/ky0xOc5OrhzkZ1N6KyUxacfQsCk.png",
        "name": "Warner Bros. Pictures",
        "origin_country": "US"
      },
      {
        "id": 437,
        "logo_path": "/nu20mtwbEIhUNnQ5NXVhHsNknZj.png",
        "name": "Heyday Films",
        "origin_country": "GB"
      }
    ],
    "production_countries": [
      {
        "iso_3166_1": "GB",
        "name": "United Kingdom"
      },
      {
        "iso_3166_1": "US",
        "name": "United States of America"
      }
    ],
    "release_date": "2018-11-14",
    "revenue": 597281700,
    "runtime": 134,
    "spoken_languages": [
      {
        "iso_639_1": "en",
        "name": "English"
      },
      {
        "iso_639_1": "fr",
        "name": "Français"
      }
    ],
    "status": "Released",
    "tagline": "Fate of One. Future of All.",
    "title": "Fantastic Beasts: The Crimes of Grindelwald",
    "video": false,
    "vote_average": 7.0,
    "vote_count": 2543,
    "videos": {
      "results": [
        {
          "id": "5aa8022b9251415e39020579",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "5sEaYB4rLFQ",
          "name": "Fantastic Beasts: The Crimes of Grindelwald - Official Teaser Trailer",
          "site": "YouTube",
          "size": 1080,
          "type": "Teaser"
        },
        {
          "id": "5b54e671c3a3685c8b00594f",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "vvFybpmyB9E",
          "name": "Fantastic Beasts: The Crimes of Grindelwald - Official Comic-Con Trailer",
          "site": "YouTube",
          "size": 1080,
          "type": "Trailer"
        },
        {
          "id": "5baa5d32c3a3683a9c00075e",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "8bYBOVWLNIs",
          "name": "Fantastic Beasts: The Crimes of Grindelwald - Final Trailer",
          "site": "YouTube",
          "size": 1080,
          "type": "Trailer"
        },
        {
          "id": "5be057f892514137d8039828",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "U0YyQ9TGQa0",
          "name": "Fantastic Beasts: The Crimes of Grindelwald (2018) - Featurette - Newt's New Grindelwald",
          "site": "YouTube",
          "size": 1080,
          "type": "Featurette"
        },
        {
          "id": "5be0583fc3a3682b3d03eacf",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "_dVmXhXFI6o",
          "name": "Fantastic Beasts: The Crimes of Grindelwald (2018) - TV Spot - Hunt",
          "site": "YouTube",
          "size": 1080,
          "type": "Teaser"
        },
        {
          "id": "5be3b7eb0e0a2614ba023815",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "DwfO-pLonAY",
          "name": "Fantastic Beasts: The Crimes of Grindelwald (2018) - Featurette - Distinctly Dumbledore",
          "site": "YouTube",
          "size": 1080,
          "type": "Featurette"
        },
        {
          "id": "5be76ce3c3a368173d020b4f",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "9M2QMIio8sY",
          "name": "Fantastic Beasts: The Crimes of Grindelwald (2018) - Featurette - Harry Potter",
          "site": "YouTube",
          "size": 1080,
          "type": "Featurette"
        },
        {
          "id": "5bfca3150e0a26360e01ef57",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "DCfCA92Eifk",
          "name": "Fantastic Beasts: The Crimes of Grindelwald - TV Spot - Chosen (2018)",
          "site": "YouTube",
          "size": 1080,
          "type": "Teaser"
        }
      ]
    },
    "images": {
      "backdrops": [
        {
          "aspect_ratio": 1.777777777777778,
          "file_path": "/zsBJzQBPKuoMQm2VI0v1eI4OxYg.jpg",
          "height": 900,
          "iso_639_1": "en",
          "vote_average": 5.312,
          "vote_count": 1,
          "width": 1600
        },
        {
          "aspect_ratio": 1.777777777777778,
          "file_path": "/5nMe5xkZlwva8uLdgDHF98Q1i56.jpg",
          "height": 1080,
          "iso_639_1": "en",
          "vote_average": 5.18,
          "vote_count": 3,
          "width": 1920
        }
      ],
      "posters": [
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/uyJgTzAsp3Za2TaPiZt2yaKYRIR.jpg",
          "height": 3000,
          "iso_639_1": "en",
          "vote_average": 5.974,
          "vote_count": 16,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6748681898066784,
          "file_path": "/bXYjDmzSRkIu0ljs2MrwyvKe7er.jpg",
          "height": 2845,
          "iso_639_1": "en",
          "vote_average": 5.456,
          "vote_count": 7,
          "width": 1920
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/2MokCu61LzWw872lPzq1VCJXTD1.jpg",
          "height": 1500,
          "iso_639_1": "en",
          "vote_average": 5.456,
          "vote_count": 11,
          "width": 1000
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/kQKcbJ9uYkTQql2R8L4jTUz7l90.jpg",
          "height": 3000,
          "iso_639_1": "en",
          "vote_average": 5.388,
          "vote_count": 4,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/4gY9Hy7LNmiiVFCMYzx7ZcP3z2W.jpg",
          "height": 1500,
          "iso_639_1": "en",
          "vote_average": 5.318,
          "vote_count": 3,
          "width": 1000
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/u5QrKhSCGoFsB8aAvZZJ1b53k16.jpg",
          "height": 3000,
          "iso_639_1": "en",
          "vote_average": 5.312,
          "vote_count": 1,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/oBysFnbG7ZfbaApAMvU9TOru5O0.jpg",
          "height": 3000,
          "iso_639_1": "en",
          "vote_average": 5.258,
          "vote_count": 6,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/f6C4Jg8SxURXO8Ja0cXY2zb5bFA.jpg",
          "height": 3000,
          "iso_639_1": "en",
          "vote_average": 5.252,
          "vote_count": 4,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/fGRdCzBFJXxybYB2OyEbehjPDzo.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/x5goITbPl5peqySkS3jEZLtY6Iq.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/4ZjKzzzICJA8qwQ0UsqTlo102B6.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/zwVvMnqY55K01dzTjyWpYnorFE1.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/8wJ7iTrsN0A2TM3plJT9Xh73BW1.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/7HCVo4i30JYzXSgiz8eoHSBqprb.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/bBAiNKKqDfbV9NL73sFrxCSsJjR.jpg",
          "height": 3000,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 2000
        },
        {
          "aspect_ratio": 0.7082152974504249,
          "file_path": "/js6QDAS3E8pUbnpDTtsD6sUhuC1.jpg",
          "height": 2824,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/1wehPnzzHEklLbKprhtY1eq6OD4.jpg",
          "height": 1080,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 720
        },
        {
          "aspect_ratio": 0.6703703703703704,
          "file_path": "/bB4y0R5ZgrNE4z5ZdItgVHONb8E.jpg",
          "height": 1080,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 724
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/u8nAek0IcW980jShoJLkm71zZFl.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 5.246,
          "vote_count": 2,
          "width": 509
        },
        {
          "aspect_ratio": 0.6669921875,
          "file_path": "/y7O0BcL7FP4lcylbRnzlTruRLfM.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.198,
          "vote_count": 7,
          "width": 1366
        },
        {
          "aspect_ratio": 0.6893480584253652,
          "file_path": "/4TKR9vMn3jdXieypl60koyPMXKW.jpg",
          "height": 2807,
          "iso_639_1": "en",
          "vote_average": 5.19,
          "vote_count": 5,
          "width": 1935
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/AtI51cW5HIancUKkQGqNRuKkN2O.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.18,
          "vote_count": 3,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/lnNw678Mm4vho5c57sN0zp5PDTq.jpg",
          "height": 1800,
          "iso_639_1": "en",
          "vote_average": 5.172,
          "vote_count": 1,
          "width": 1200
        },
        {
          "aspect_ratio": 0.6748046875,
          "file_path": "/AqKeSXuk49aujYx9GuwcXlNhpwA.jpg",
          "height": 2048,
          "iso_639_1": "en",
          "vote_average": 5.118,
          "vote_count": 4,
          "width": 1382
        },
        {
          "aspect_ratio": 0.6748681898066784,
          "file_path": "/sYaxqCQwi1wZMO5xSIDMd0eTiks.jpg",
          "height": 2845,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 1920
        },
        {
          "aspect_ratio": 0.6749915626054674,
          "file_path": "/zZZTx1e2hdA13LcYPN3n5h5CkBL.jpg",
          "height": 2963,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 2000
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/tAzxFjoQg6mzvZILmqyGC70BC1x.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/qpgFbEHj4IMo2cF3bG7Gh3IsQh6.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/3Pq1t02MRELoehz5zBeGq0ddYqK.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/v3nfpS6XIrWvIH1cqrvOQALdhXJ.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/vigtJnRcxSvi5x8VvvDFaI90xYQ.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/pQabSbegDc7FGhzLwz1b2iLBk6q.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/4DbkEYplOsBpKSU8uVkS8Zx1y29.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.6741721854304635,
          "file_path": "/dpg9AcdPUn4eLP0DQ0fMLFoAkx6.jpg",
          "height": 755,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 509
        },
        {
          "aspect_ratio": 0.675,
          "file_path": "/5KNdoqdmvH0kdFNUSirc4EiUxgg.jpg",
          "height": 2000,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 1350
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/mYSX4lUIRTJpjO8CW6YsP485tWB.jpg",
          "height": 1500,
          "iso_639_1": "en",
          "vote_average": 0.0,
          "vote_count": 0,
          "width": 1000
        }
      ]
    }
  },
  {
    "adult": false,
    "backdrop_path": "/tmsddF6G7vIbJ2Lg6DZDVbnhBxs.jpg",
    "belongs_to_collection": null,
    "budget": 0,
    "genres": [
      {
        "id": 878,
        "name": "Science Fiction"
      },
      {
        "id": 9648,
        "name": "Mystery"
      },
      {
        "id": 18,
        "name": "Drama"
      },
      {
        "id": 53,
        "name": "Thriller"
      },
      {
        "id": 10770,
        "name": "TV Movie"
      }
    ],
    "homepage": "http://www.netflix.com/title/80988062",
    "id": 569547,
    "imdb_id": "tt9495224",
    "original_language": "en",
    "original_title": "Black Mirror: Bandersnatch",
    "overview": "In 1984, a young programmer begins to question reality as he adapts a dark fantasy novel into a video game. A mind-bending tale with multiple endings.",
    "popularity": 79.384,
    "poster_path": "/fR0VZ0VE598zl1lrYf7IfBqEwQ2.jpg",
    "production_companies": [
      {
        "id": 59811,
        "logo_path": "/wwemzKWzjKYJFfCeiB57q3r4Bcm.png",
        "name": "Netflix",
        "origin_country": "US"
      },
      {
        "id": 76757,
        "logo_path": null,
        "name": "House of Tomorrow",
        "origin_country": "GB"
      }
    ],
    "production_countries": [
      {
        "iso_3166_1": "GB",
        "name": "United Kingdom"
      },
      {
        "iso_3166_1": "US",
        "name": "United States of America"
      }
    ],
    "release_date": "2018-12-28",
    "revenue": 0,
    "runtime": 90,
    "spoken_languages": [
      {
        "iso_639_1": "en",
        "name": "English"
      }
    ],
    "status": "Released",
    "tagline": "Relax.",
    "title": "Black Mirror: Bandersnatch",
    "video": false,
    "vote_average": 7.6,
    "vote_count": 437,
    "videos": {
      "results": [
        {
          "id": "5c24cd01c3a368700bf22648",
          "iso_639_1": "en",
          "iso_3166_1": "US",
          "key": "XM0xWpBYlNM",
          "name": "Black Mirror: Bandersnatch | Official Trailer [HD] | Netflix",
          "site": "YouTube",
          "size": 1080,
          "type": "Trailer"
        }
      ]
    },
    "images": {
      "backdrops": [
        {
          "aspect_ratio": 1.777777777777778,
          "file_path": "/3U0MHHRTAuWOCEu5jpizoLFKTTH.jpg",
          "height": 1575,
          "iso_639_1": "en",
          "vote_average": 5.312,
          "vote_count": 1,
          "width": 2800
        },
        {
          "aspect_ratio": 1.777777777777778,
          "file_path": "/1v3BW1XzSqmvNS5XH46C06QKE9i.jpg",
          "height": 720,
          "iso_639_1": "en",
          "vote_average": 5.312,
          "vote_count": 1,
          "width": 1280
        },
        {
          "aspect_ratio": 1.777777777777778,
          "file_path": "/hpfhsUUqVT7zU4fJ2SiuCHRvKSD.jpg",
          "height": 720,
          "iso_639_1": "en",
          "vote_average": 5.118,
          "vote_count": 4,
          "width": 1280
        },
        {
          "aspect_ratio": 1.777777777777778,
          "file_path": "/g1YUyySAWXSgV2u7hKnptQaDxje.jpg",
          "height": 720,
          "iso_639_1": "en",
          "vote_average": 0,
          "vote_count": 0,
          "width": 1280
        }
      ],
      "posters": [
        {
          "aspect_ratio": 0.666966696669667,
          "file_path": "/fR0VZ0VE598zl1lrYf7IfBqEwQ2.jpg",
          "height": 2222,
          "iso_639_1": "en",
          "vote_average": 5.824,
          "vote_count": 11,
          "width": 1482
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/4YhMs7iXSCR5MVOZlmjeSmggN3l.jpg",
          "height": 2100,
          "iso_639_1": "en",
          "vote_average": 5.312,
          "vote_count": 1,
          "width": 1400
        },
        {
          "aspect_ratio": 0.666966696669667,
          "file_path": "/bgzgKLgp21dIiG0tLoy7n7aC5iv.jpg",
          "height": 2222,
          "iso_639_1": "en",
          "vote_average": 5.226,
          "vote_count": 15,
          "width": 1482
        },
        {
          "aspect_ratio": 0.649,
          "file_path": "/sKGMOVoqDNm9pYDP4NtlEGSdXSZ.jpg",
          "height": 1000,
          "iso_639_1": "en",
          "vote_average": 4.954,
          "vote_count": 9,
          "width": 649
        },
        {
          "aspect_ratio": 0.6666666666666666,
          "file_path": "/aXdcqtciLDfKNTw61Ocq0jATHes.jpg",
          "height": 750,
          "iso_639_1": "en",
          "vote_average": 4.81,
          "vote_count": 7,
          "width": 500
        }
      ]
    }
  }
]
""";

List<Movie> mockMovies() {
  final dynamic serialized = json.decode(data);

  final BuiltList<Movie> movies = serializers.deserialize(
    serialized,
    specifiedType: const FullType(BuiltList, const [const FullType(Movie)]),
  );

  return movies.toList();
}
