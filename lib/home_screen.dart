import 'package:books/widgets/custom_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        // CustomImageCard(imageUrl:"${AppUrl.imageUrl}${data.similar[index1].bookImage}",),
        Container(
            height: 200,
            width: 160.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black87,)
            ),
            child: const CustomImageCard(imageUrl:"https://images-platform.99static.com//Q2Fwj5laXViAM8QtAGAfpxUyEYg=/fit-in/500x500/projects-files/152/15287/1528752/f86d06e9-f594-4207-99a3-ab29ac5bd86d.jpg",)),
      ),
    );
  }
}