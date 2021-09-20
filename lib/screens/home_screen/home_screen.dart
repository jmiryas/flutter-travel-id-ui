import 'package:flutter/material.dart';

import '../../widgets/home_screen/destination_widget.dart';
import '../../widgets/home_screen/categories_widget.dart';
import '../../widgets/home_screen/discover_now_widget.dart';
import '../../widgets/home_screen/search_destination_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          DiscoverNowWidget(),
          SearchDestinationWidget(),
          CategoriesWidget(),
          DestinationWidget()
        ],
      ),
    );
  }
}
