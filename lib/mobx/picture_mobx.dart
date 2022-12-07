import 'package:mobx/mobx.dart';
part 'picture_mobx.g.dart';

class TopRatedFilm = _TopRatedFilmBase with _$TopRatedFilm;

abstract class _TopRatedFilmBase with Store {
  @observable
  TopRatedFilmModels topfilms = TopRatedFilmModels();
  @observable
  bool isAlbumTracksLoaded = false;

  @action
  getTopRatedFilms() async {
    isAlbumTracksLoaded = false;
    //topfilms = (await getTopRatedFilmsService())!;
    isAlbumTracksLoaded = true;
  }
}
