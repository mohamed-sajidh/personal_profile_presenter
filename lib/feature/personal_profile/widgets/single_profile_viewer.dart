import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_profile_presenter/feature/personal_profile/personal_profile_controller.dart';

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
    var height = screeenSize.height;
    var width = screeenSize.width;
    return Container(
      padding: width > 643 && width < 1200 ? EdgeInsets.all(20) : EdgeInsets.all(25),
      margin: const EdgeInsets.all(15.0),
      height: 400,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Name : "),
              Text(controller.profile[widget.index].name)
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Username : ", style: TextStyle(fontSize: 24)),
              Text(controller.profile[widget.index].username)
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Email : "),
              Text(controller.profile[widget.index].email)
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("Address : "), Text("Manam")],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Phone : "),
              Text(controller.profile[widget.index].phone)
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Website : "),
              Text(controller.profile[widget.index].website)
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("Company : "), Text("Manam")],
          ),
        ],
      ),
    );
  }
}




// InkWell(
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
//                             child: Text("Submit"),
//                             onPressed: () {
//                               Get.back();
//                             })
//                       ],
//                     );
//                   });
//             },
//           )