import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return Scaffold(
      body: GetBuilder(
        init: PersonalProfileController(),
        builder: (controller) {
          return Obx(() => controller.loading.isTrue ?
          Center(child: CircularProgressIndicator()) :
          GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (orientation == Orientation.portrait) ? 1 : 3),
        itemBuilder: (BuildContext context, int index) {
          return SingleProfileViewer(index: index);
        },
      ),
          
          );
        },
      ),
    );
  }
}
// body: GridView.builder(
//         itemCount: 10,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2),
//         itemBuilder: (BuildContext context, int index) {
//           return SingleProfileViewer();
//         },
//       ),