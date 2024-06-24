import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:personal_profile_presenter/feature/personal_profile/personal_profile_controller.dart';
import 'package:personal_profile_presenter/feature/personal_profile/widgets/single_profile_viewer.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({super.key});

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Profile Presenter",
          style: TextStyle(
              fontSize: width < 643 ? 30 : 45,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(229, 1, 49, 131)),
        ),
        centerTitle: true,
      ),
      body: GetBuilder(
        init: PersonalProfileController(),
        builder: (controller) {
          return Obx(
            () => controller.loading.isTrue
                ? Center(
                    child: LoadingAnimationWidget.staggeredDotsWave(
                      color: const Color.fromARGB(229, 1, 49, 131),
                      size: width > 1200 ? 200 : 100,
                    ),
                  )
                : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: controller.profile.length,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 30/18,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                          crossAxisCount:
                              (orientation == Orientation.portrait) ? 1 : 3
                              ),
                      itemBuilder: (BuildContext context, int index) {
                        return SingleProfileViewer(index: index);
                      },
                    ),
                )
          );
        },
      ),
    );
  }
}