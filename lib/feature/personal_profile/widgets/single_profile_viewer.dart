import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_profile_presenter/feature/personal_profile/personal_profile_controller.dart';
import 'package:personal_profile_presenter/feature/personal_profile/widgets/bottom_profile_details.dart';
import 'package:personal_profile_presenter/feature/personal_profile/widgets/single_personal_details.dart';

class SingleProfileViewer extends StatefulWidget {
  const SingleProfileViewer({super.key, required this.index});
  final int index;

  @override
  State<SingleProfileViewer> createState() => _SingleProfileViewerState();
}

class _SingleProfileViewerState extends State<SingleProfileViewer> {
  @override
  Widget build(BuildContext context) {
    final PersonalProfileController controller =
        Get.put(PersonalProfileController());
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500,
        width: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 5)],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 65,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 57, 56, 56),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                controller.profile[widget.index].name,
                style: TextStyle(
                    fontSize: width > 643 && width < 1200 ? 15 : 25,
                    color: Colors.white),
              )),
            ),
            SizedBox(
              height: width > 1100 ? 160 : 150,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: width > 1100 ? 160 : 150,
                        width: 140,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: width > 1100 ? 55 : 50,
                                width: 140,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 57, 56, 56),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 100,
                              child: Container(
                                height: width > 1100 ? 60 : 50,
                                width: 140,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(229, 1, 49, 131),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 100,
                                height: 115,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 3, color: Colors.grey),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.person,
                                    size: 100,
                                    color: Color.fromARGB(229, 1, 49, 131),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  SinglePersonalDetails(
                    index: widget.index,
                  )
                ],
              ),
            ),
            BottomProfileDetails(
              index: widget.index,
            )
          ],
        ),
      ),
    );
  }
}