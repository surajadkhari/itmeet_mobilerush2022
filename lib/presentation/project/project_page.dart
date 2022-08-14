import 'package:flutter/cupertino.dart';

import '../../utls/commons/logo_widget.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          LogoWidget(),
          Text(
            "This is work in progress",
            style: TextStyle(fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}