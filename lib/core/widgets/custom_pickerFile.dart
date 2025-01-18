// ignore_for_file: avoid_print

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../config/responsive.dart';
import '../resources/color.dart';
import '../resources/padding.dart';
import '../resources/string.dart';

class CustomPickerfile extends StatelessWidget {
  const CustomPickerfile({super.key});

  Future<void> pickFile() async {
    String? fileName;
    PlatformFile? getFile;
    File? fileToDisplay;

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ["doc", "pdf", "jpg"],
    );

    if (result != null) {
      fileName = result.files.first.name;
      getFile = result.files.first;
      fileToDisplay = File(getFile.path.toString());

      print("File Name is : $fileName");
      print('Selected file: $fileToDisplay');
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: leftAndRightPadding(0.03, 0.03),
      child: GestureDetector(
        onTap: () {
          pickFile();
        },
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          color: gray,
          strokeWidth: 2,
          dashPattern: const [6, 3],
          child: ClipRRect(
            borderRadius: const BorderRadius.all( Radius.circular(12)),
            child: Container(
              width: screenWidth,
              height: screenHight * 0.118,
              color: white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.backup_outlined,
                    color: Colors.grey,
                  ),const SizedBox(height: 6),
                  Text(
                    Strings.FORMATDOCPDFJPG.tr,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),const SizedBox(height: 6),
                  Text(
                    Strings.BROWSEFILES.tr,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//! code for the same but with show the photo and show the file scelected

// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path/path.dart';

// import '../../config/responsive.dart';
// import '../resources/color.dart';
// import '../resources/string.dart';

// class CustomPickerfile extends StatefulWidget {
//   const CustomPickerfile({super.key});

//   @override
//   State<CustomPickerfile> createState() => _CustomPickerfileState();
// }

// class _CustomPickerfileState extends State<CustomPickerfile> {
//   List<File> pickedFileList = [];
//   Future<void> pickedFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       allowMultiple: true,
//       type: FileType.custom,
//       allowedExtensions: ["doc", "pdf", "jpg"],
//     );
//     print(result);
//     if (result != null) {
//       setState(() {
//         pickedFileList=result.files.map((file)=>File(file.path!)).toList();
//       });
//     }
//   }

//   void openFile(File file) {
//     OpenFile.open(file.path);

//   }

//   Icon returnLogo(file) {
//     var ex = extension(file.path);
//     if (ex == ".jpg") {
//       return const Icon(Icons.image, color: green);
//     } else if (ex == ".pdf") {
//       return const Icon(Icons.picture_as_pdf_sharp, color: red);
//     } else if (ex == ".mp4") {
//       return const Icon(Icons.picture_as_pdf_sharp, color: blue);
//     } else {
//       return const Icon(
//         Icons.question_mark_outlined,
//         color: gray,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         color: green,
//         height: 500,
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 pickedFile();
//               },
//               child: Container(
//                 color: red,
//                 width: screenWidth,
//                 height: screenHight * 0.118,
//                 child: Column(
//                   children: [
//                     const Icon(
//                       Icons.backup_outlined,
//                       color: gray,
//                     ),
//                     Text(
//                       Strings.FORMATDOCPDFJPG.tr,
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     ),
//                     Text(
//                       Strings.BROWSEFILES.tr,
//                       style: Theme.of(context)
//                           .textTheme
//                           .headlineMedium!
//                           .copyWith(color: blue),
//                     ),
//                     SizedBox(height: 00,
//                       child: pickedFileList.isNotEmpty
//                           ? ListView.builder(
//                               itemCount: pickedFileList.length,
//                               itemBuilder: (BuildContext context, int index) {
//                                 return GestureDetector(
//                                   onTap: () {
//                                     return openFile(pickedFileList[index]);
//                                   },
//                                   child: ListTile(
//                                     leading: returnLogo(
//                                       pickedFileList[index],
//                                     ),
//                                     subtitle: Text(pickedFileList[index].path),
//                                     title: Text(pickedFileList[index].path.split('/').last),//! split mean to divide the path when i can take the last path where is the file name
//                                   ),
//                                 );
//                               },
//                             )
//                           : Container(),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
