// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:mobx_ex2/model/top_rated_films_model.dart';
part 'picture_mobx.g.dart';

class TopRateddFilms = _TopRateddFilmsBase with _$TopRateddFilms;

abstract class _TopRateddFilmsBase with Store {
  @observable
  TopRatedFilmModels topfilms = TopRatedFilmModels();
  @observable
  bool isAlbumTracksLoaded = false;

  @action
  getTopRatedFilms() async {
    isAlbumTracksLoaded = false;
    topfilms = await getTopRatedFilmsService();
    isAlbumTracksLoaded = true;
  }
}
