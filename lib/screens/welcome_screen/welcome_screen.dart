import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/data.dart';
import '../../models/welcome_screen/welcome_model.dart';
import '../../screens/navigation/navigation_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    _buildScreenIndex(int currentIndex, int maxIndex) {
      List<Widget> screenIndex = [];

      for (int i = 0; i < maxIndex; i++) {
        if (currentIndex == i) {
          screenIndex.add(Container(
            width: 20.0,
            height: 3.0,
            color: Colors.red,
          ));
          screenIndex.add(const SizedBox(
            width: 5.0,
          ));
        } else {
          screenIndex.add(Container(
            width: 20.0,
            height: 3.0,
            color: Colors.grey.shade400,
          ));
          screenIndex.add(const SizedBox(
            width: 5.0,
          ));
        }
      }

      var result = Row(
        children: screenIndex,
      );

      return result;
    }

    _buildWelcomeScreenWidget(
        WelcomeModel welcomeModel, int currentIndex, int maxIndex) {
      var welcomeScreen = Stack(
        children: [
          Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(welcomeModel.image)))),
          Container(
            width: width,
            height: height,
            color: Colors.black26,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  width: width,
                  height: 250.0,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          welcomeModel.name,
                          style: const TextStyle(
                              fontSize: 20.0,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          welcomeModel.description,
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.grey.shade600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildScreenIndex(currentIndex, maxIndex),
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 15.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0))),
                                onPressed: () {
                                  Get.to(const NavigationScreen());
                                },
                                icon: const Icon(Icons.arrow_forward_ios),
                                label: const Text("Explore Now"))
                          ],
                        )
                      ]),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 6.0)
                      ]))
            ],
          )
        ],
      );

      return welcomeScreen;
    }

    return Scaffold(
        body: PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: welcome_images.length,
            itemBuilder: (context, index) {
              WelcomeModel welcomeModel = welcome_images[index];

              return _buildWelcomeScreenWidget(welcomeModel, index, 3);
            }));
  }
}
