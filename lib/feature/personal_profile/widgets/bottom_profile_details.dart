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
    return Container(
      height: 59,
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
            width: 140,
            child: Center(
              child: Text(
                controller.profile[index].username,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
                width: width > 1100 ? 340 : 328,
                child: Column(
                  children: [
                    SizedBox(
                      height: 14,
                      width: width > 1100 ? 340 : 328,
                      child: Center(
                        child: Text(
                          controller.profile[index].company.name,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 9),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                      width: width > 1100 ? 340 : 328,
                      // color: Colors.red,
                      child: Center(
                        child: Text(
                          controller.profile[index].company.catchPhrase,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 9),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                      width: width > 1100 ? 340 : 328,
                      child: Center(
                        child: Text(
                          controller.profile[index].company.bs,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 9),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
