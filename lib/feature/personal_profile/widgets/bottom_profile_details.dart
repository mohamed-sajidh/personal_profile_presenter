import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_profile_presenter/feature/personal_profile/personal_profile_controller.dart';

class BottomProfileDetails extends StatelessWidget {
  const BottomProfileDetails({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final PersonalProfileController controller =
        Get.put(PersonalProfileController());
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Container(
      height: height * 0.064,
      decoration: const BoxDecoration(
        color: Color.fromARGB(229, 1, 49, 131),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: width * 0.3,
            child: Center(
              child: Text(
                controller.profile[index].username,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Container(
            width: width * 0.61,
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.015,
                  width: width * 0.61,
                  child: Center(
                    child: Text(
                      controller.profile[index].company.name,
                      style: const TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                  width: width * 0.61,
                  child: Center(
                    child: Text(
                      controller.profile[index].company.catchPhrase,
                      style: const TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                  width: width * 0.61,
                  child: Center(
                    child: Text(
                      controller.profile[index].company.bs,
                      style: const TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
