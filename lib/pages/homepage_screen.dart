// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_ex2/mobx/picture_mobx.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TopRateddFilms mob = TopRateddFilms();

/* @override
  void initState() {
    //Random Listview's data
    data = Provider.of<TopRatedFilmsProvider>(context, listen: false);
    data!.getTopRatedFilms();
    //Popular films ListView's data
    PopularFilmsProvider data2 =
        Provider.of<PopularFilmsProvider>(context, listen: false);
    data2.getPopularFilms();
    super.initState();
  } */
  @override
  void initState() {
    // TODO: implement initState
    mob.getTopRatedFilms();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
        ),
        body: Observer(
          builder: (_) {
            return mob.isAlbumTracksLoaded == false
                ? Container()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text(mob.topfilms.results![0].title.toString()),
                      Container(
                        height: 150,
                        width: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/${mob.topfilms.results![0].posterPath}"))),
                      ),
                      SizedBox(height: 20),
                      Text(mob.topfilms.results![0].title.toString())
                    ],
                  );
          },
        ));
  }
}
