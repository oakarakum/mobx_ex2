// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TopRateddFilms on _TopRateddFilmsBase, Store {
  late final _$isAlbumTracksLoadedAtom =
      Atom(name: '_TopRateddFilmsBase.isAlbumTracksLoaded', context: context);

  @override
  bool get isAlbumTracksLoaded {
    _$isAlbumTracksLoadedAtom.reportRead();
    return super.isAlbumTracksLoaded;
  }

  @override
  set isAlbumTracksLoaded(bool value) {
    _$isAlbumTracksLoadedAtom.reportWrite(value, super.isAlbumTracksLoaded, () {
      super.isAlbumTracksLoaded = value;
    });
  }

  late final _$getTopRatedFilmsAsyncAction =
      AsyncAction('_TopRateddFilmsBase.getTopRatedFilms', context: context);

  @override
  Future getTopRatedFilms() {
    return _$getTopRatedFilmsAsyncAction.run(() => super.getTopRatedFilms());
  }

  @override
  String toString() {
    return '''
isAlbumTracksLoaded: ${isAlbumTracksLoaded}
    ''';
  }
}
