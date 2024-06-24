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
    return SizedBox(
      width: width > 1100 ? 330 : 310,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 25,
            child: Row(
              children: [
                const SizedBox(
                  width: 50,
                  child: Center(
                    child: Icon(Icons.phone),
                  ),
                ),
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
            height: 25,
            child: Row(
              children: [
                const SizedBox(
                  width: 50,
                  child: Center(
                    child: Icon(Icons.email_rounded),
                  ),
                ),
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
            height: 25,
            child: Row(
              children: [
                const SizedBox(
                  width: 50,
                  child: Center(
                    child: Icon(Icons.web),
                  ),
                ),
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
            height: 45,
            child: Row(
              children: [
                const SizedBox(
                  width: 50,
                  child: Center(
                    child: Icon(Icons.location_on),
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: width > 1100 ? 280 : 260,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        width: width > 1100 ? 280 : 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Center(
                                  child: Text(
                                    "${controller.profile[index].address.street} ,",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Text(
                                  "${controller.profile[index].address.suite} ,",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Text(
                                  "${controller.profile[index].address.city} ,",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: width > 1100 ? 280 : 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Center(
                                  child: Text(
                                    "${controller.profile[index].address.zipcode} ,",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Text(
                                  "${controller.profile[index].address.geo.lat}('lang'), ${controller.profile[index].address.geo.lng}('long')",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
