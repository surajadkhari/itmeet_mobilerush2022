import 'package:flutter/material.dart';
import 'package:mobilerush2022/utls/app.const.dart';

import '../../utls/commons/logo_widget.dart';
import 'model/home_model.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoWidget(),
            const Text(
              "Award-wining digital agency",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: homeModel.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Appconst.primaryColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              homeModel[index].svgSrc,
                            ),
                            Text(
                              homeModel[index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              homeModel[index].subtitle,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
        // appBar: PreferredSize(
        //     preferredSize:
        //         const Size.fromHeight(60.0), // here the desired height
        //     child: AppBar(
        //       title: Image.asset(),
        //       // ...
        //     ))
      ),
    );
  }
}
