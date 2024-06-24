import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_profile_presenter/feature/personal_profile/personal_profile_controller.dart';

class SinglePersonalDetails extends StatelessWidget {
  const SinglePersonalDetails({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final PersonalProfileController controller =
        Get.put(PersonalProfileController());
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: width * 0.55,
        height: height * 0.176,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: height * 0.027,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.050,
                    child: const Center(
                      child: Icon(
                        Icons.phone,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.015),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      controller.profile[index].phone,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.027,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.050,
                    child: const Center(
                      child: Icon(Icons.email_rounded),
                    ),
                  ),
                  SizedBox(width: width * 0.015),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      controller.profile[index].email,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.027,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.050,
                    child: const Center(
                      child: Icon(Icons.web),
                    ),
                  ),
                  SizedBox(width: width * 0.015),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      controller.profile[index].website,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.047,
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.050,
                    child: const Center(
                      child: Icon(Icons.location_on),
                    ),
                  ),
                  SizedBox(width: width * 0.015),
                  SizedBox(
                    height: height * 0.047,
                    width: width * 0.45,
                    child: Text(
                      maxLines: 2,
                      "${controller.profile[index].address.street}, ${controller.profile[index].address.suite}, ${controller.profile[index].address.city}, ${controller.profile[index].address.zipcode}, ${controller.profile[index].address.geo.lat}('lang'), ${controller.profile[index].address.geo.lng}('long')",
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 11),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
