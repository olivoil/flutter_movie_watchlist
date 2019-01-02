import 'package:flutter/widgets.dart';

class MovieRecommendation extends ChangeNotifier {
  Decision decision = Decision.undecided;

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
