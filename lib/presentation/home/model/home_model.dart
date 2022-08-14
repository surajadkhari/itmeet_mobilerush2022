import 'package:mobilerush2022/utls/app.const.dart';

class HomeModel {
  final String subtitle, title, svgSrc;

  HomeModel(
      {required this.title, required this.subtitle, required this.svgSrc});
}

List<HomeModel> homeModel = [
  HomeModel(
    title: "3400 +",
    svgSrc: Appconst.homehappy,
    subtitle: "Projects Deliverd",
  ),
  HomeModel(
    title: "180 +",
    svgSrc: Appconst.homedeveloper,
    subtitle: "Developers",
  ),
  HomeModel(
    title: "3 Modeling",
    svgSrc: Appconst.homedeveloper,
    subtitle: "Year in operation",
  ),
  HomeModel(
    title: "MI",
    svgSrc: Appconst.homedeveloper,
    subtitle: "international awards",
  ),
];
