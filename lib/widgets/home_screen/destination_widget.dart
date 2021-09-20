import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../models/home_screen/destination_model.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _buildRating(int rating) {
      String result = "";

      for (int i = 0; i < rating; i++) {
        result += "⭐";
      }

      return result;
    }

    return SliverPadding(
        padding: const EdgeInsets.all(20.0),
        sliver: SliverGrid.count(
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            children: List.generate(destinationList.length, (index) {
              DestinationModel destination = destinationList[index];

              return Stack(
                children: [
                  Container(
                      height: 400.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(destination.image),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0)
                          ],
                          borderRadius: BorderRadius.circular(30.0))),
                  Container(
                      height: 400.0,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(30.0))),
                  Container(
                    height: 400.0,
                    // color: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            destination.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(_buildRating(destination.rating))
                        ],
                      ),
                    ),
                  )
                  // Expanded(
                  //   child: Center(
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Text(
                  //             destination.name,
                  //             overflow: TextOverflow.ellipsis,
                  //             maxLines: 1,
                  //             softWrap: false,
                  //             style: const TextStyle(
                  //                 fontSize: 16.0,
                  //                 color: Colors.white,
                  //                 fontWeight: FontWeight.bold,
                  //                 letterSpacing: 1.0),
                  //           ),
                  //           const SizedBox(
                  //             height: 5.0,
                  //           ),
                  //           Text(_buildRating(destination.rating))
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              );
            })));
  }
}
