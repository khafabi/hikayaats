import 'package:hikayaats/constants/controllers.dart';
import 'package:hikayaats/controllers/contentController.dart';
import 'package:hikayaats/model/level.dart';
import 'package:hikayaats/screens/module/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  final ContentController _contentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /// App Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey.shade200,
                  child: Icon(
                    Icons.person_rounded,
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      'Logout',
                      style: kSubtitleTextStyleWhite,
                    ),
                    onPressed: () {
                      authController.signOut();
                    },
                  ),
                ),
              ],
            ),
            //SizedBox(height: 10),

            ///User Name
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("Halo, ${authController.userModel.value.name}",
                  style: kHeadingextStyle),
            ),

            ///Tagline
            Text("Which story you want to discover today?",
                style: kSubheadingextStyle),

            ///Category
            CategoryBar(),
            SizedBox(height: 30),

            ///Contents
            // ContentsGrid(),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount:  _contentController.levels.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(ModuleScreen(level: _contentController.levels[index].value));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: index.isEven ? 200 : 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(_contentController.levels[index].value.image!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            _contentController.levels[index].value.name!,
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '${_contentController.levels[index].value.numOfCourses} Courses',
                            style: TextStyle(
                              color: kTextColor.withOpacity(.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryBar extends StatelessWidget {
  const CategoryBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Category", style: kTitleTextStyle),
      ],
    );
  }
}
