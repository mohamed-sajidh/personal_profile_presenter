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







// Container(
//       padding: width > 1200 ? EdgeInsets.all(35) : EdgeInsets.all(20),
//       margin: const EdgeInsets.all(15.0),
//       height: 400,
//       width: 100,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [BoxShadow(blurRadius: 5)],
//           // border: Border.all(color: Colors.blueAccent),
//           borderRadius: BorderRadius.all(Radius.circular(10))),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text("Name : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25,
//                       fontWeight: FontWeight.w500)),
//               Text(controller.profile[widget.index].name,
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Username : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25,
//                       fontWeight: FontWeight.w500)),
//               Text(controller.profile[widget.index].username,
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Email : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 23,
//                       fontWeight: FontWeight.w500)),
//               Text(controller.profile[widget.index].email,
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 23))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Address : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25,
//                       fontWeight: FontWeight.w500)),
//               Text("see more...",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Phone : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25,
//                       fontWeight: FontWeight.w500)),
//               Text(controller.profile[widget.index].phone,
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Website : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25,
//                       fontWeight: FontWeight.w500)),
//               Text(controller.profile[widget.index].website,
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Company : ",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25,
//                       fontWeight: FontWeight.w500)),
//               Text("Haiii",
//                   style: TextStyle(
//                       fontSize: width > 643 && width < 1200 ? 15 : 25))
//             ],
//           ),

//           InkWell(
//             child: Text("view more.."),
//             onTap: () {
//               showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       scrollable: true,
//                       title: Text('Login'),
//                       content: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Form(
//                           child: Column(
//                             children: <Widget>[
//                               TextFormField(
//                                 decoration: InputDecoration(
//                                   labelText: 'Name',
//                                   icon: Icon(Icons.account_box),
//                                 ),
//                               ),
//                               TextFormField(
//                                 decoration: InputDecoration(
//                                   labelText: 'Email',
//                                   icon: Icon(Icons.email),
//                                 ),
//                               ),
//                               TextFormField(
//                                 decoration: InputDecoration(
//                                   labelText: 'Message',
//                                   icon: Icon(Icons.message),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       actions: [
//                         ElevatedButton(
//                             child: Text("Close"),
//                             onPressed: () {
//                               // Get.back();
//                               Navigator.pop(context);
//                             })
//                       ],
//                     );
//                   });
//             },
//           )
//         ],
//       ),
//     );