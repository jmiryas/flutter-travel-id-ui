import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/categories_controller.dart';
import '../../data/data.dart';
import '../../models/home_screen/category_filter_model.dart';
import '../../models/home_screen/category_model.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CatergoryController catergoryController = Get.put(CatergoryController());

    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w600),
                ),
                Text("See All",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          Container(
            height: 130.0,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  CategoryModel category = categoriesList[index];

                  return Container(
                    width: 100.0,
                    height: 130.0,
                    // color: Colors.blue,
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0)
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.0),
                            child: Image(
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                              image: AssetImage(category.image),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0.0,
                            child: Container(
                              width: 100.0,
                              height: 30.0,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    category.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                }),
          ),
          Container(
            height: 50.0,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30.0)),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categoriesFilterList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  CategoryFilterModel categoryFilter =
                      categoriesFilterList[index];

                  return GestureDetector(
                    onTap: () {
                      catergoryController.currentIndex.value = index;
                    },
                    child: Obx(() => Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        height: 50.0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: catergoryController.getCategoryColor(index),
                            borderRadius: BorderRadius.circular(18.0)),
                        child: Center(
                          child: Text(
                            categoryFilter.name,
                            style: TextStyle(
                                color: catergoryController
                                    .getCategoryTextColor(index)),
                          ),
                        ))),
                  );
                }),
          )
        ],
      ),
    );
  }
}
