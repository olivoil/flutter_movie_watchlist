import 'package:flutter/widgets.dart';
import 'package:rmdb_app/models/movie.dart';

class RecommendationEngine extends ChangeNotifier {
  RecommendationEngine({
    List<MovieRecommendation> recommendations,
  }) : _recommendations = recommendations {
    _previousRecomendationIndex = null;
    _currentRecommendationIndex = 0;
    _nextRecommendationIndex = recommendations.length > 1 ? 1 : 0;
  }

  final List<MovieRecommendation> _recommendations;
  int _previousRecomendationIndex;
  int _currentRecommendationIndex;
  int _nextRecommendationIndex;

  MovieRecommendation get previousMovieRecommendation =>
      _previousRecomendationIndex == null
          ? null
          : _recommendations[_previousRecomendationIndex];

  MovieRecommendation get currentMovieRecommendation =>
      _recommendations[_currentRecommendationIndex];

  MovieRecommendation get nextMovieRecommendation =>
      _recommendations[_nextRecommendationIndex];

  void cycleRecomendation() {
    if (currentMovieRecommendation.decision != Decision.undecided) {
      currentMovieRecommendation.reset();
    }

    _previousRecomendationIndex = _currentRecommendationIndex;
    _currentRecommendationIndex = _nextRecommendationIndex;
    _nextRecommendationIndex =
        _currentRecommendationIndex < _recommendations.length - 1
            ? _currentRecommendationIndex + 1
            : 0;

    notifyListeners();
  }
}

class MovieRecommendation extends ChangeNotifier {
  final Movie movie;
  Decision decision = Decision.undecided;

  MovieRecommendation({this.movie});

  void reset() {
    if (decision != Decision.undecided) {
      decision = Decision.undecided;
      notifyListeners();
    }
  }

  void like() {
    if (decision == Decision.undecided) {
      decision = Decision.like;
      notifyListeners();
    }
  }

  void dislike() {
    if (decision == Decision.undecided) {
      decision = Decision.dislike;
      notifyListeners();
    }
  }

  void watchLater() {
    if (decision == Decision.undecided) {
      decision = Decision.watchLater;
      notifyListeners();
    }
  }

  void skip() {
    if (decision == Decision.undecided) {
      decision = Decision.skip;
      notifyListeners();
    }
  }
}

enum Decision { undecided, skip, dislike, like, watchLater }
