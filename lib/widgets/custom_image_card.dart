import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageCard extends StatelessWidget {
  final String imageUrl;

  const CustomImageCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: 180.h,
      width: 160.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Shadow for the book
          Positioned(
            top: 22.5,
            left: 30.75,
            child: Container(
              width: 123,
              height: 161.25,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          // Shadow for the book
          Positioned(
            top: 22.5,
            left: 30.75,
            child: Container(
              width: 123,
              height: 161.25,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Positioned(
            top: 23,
            left: 27.5,
            child: Container(
              width: 125,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(2, 2),
                    blurRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(2, -2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 24.5,
            left: 26,
            child: Container(
              width: 125,
              height: 157.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(2, 2),
                    blurRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(2, -2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              width: 125,
              height: 156,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(2, 2),
                    blurRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(2, -2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 24,
            child: Container(
              width: 125,
              height: 156,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(2, 2),
                    blurRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(2, -2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 24,
            child: Container(
              width: 124,
              height: 156,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(2, 2),
                    blurRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(2, -2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 22.5,
            left: 22.5,
            child: Container(
              width: 125.5,
              height: 158,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(3),
                  right: Radius.circular(4),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: const Offset(2, -2),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(3),
                  right: Radius.circular(4),
                ),
                child: Stack(
                  children: [
                    /// The Background Image
                    CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,  // Ensure it stretches fully
                      height: double.infinity,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => const Center(
                        child: Icon(Icons.image, size: 50, color: Colors.grey),
                      ),
                    ),

                    /// First Vertical Divider (Left side)
                    Positioned(
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 1.5,
                        color: Colors.black12.withOpacity(0.05),
                      ),
                    ),

                    /// Second Vertical Divider (upper)
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 5.5,
                      child: Container(
                        width: 4,
                        color: Colors.black12.withOpacity(0.05),
                      ),
                    ),

                    /// Second Vertical Divider (bottom)
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 7,
                      child: Container(
                        width: 1,
                        color: Colors.black12.withOpacity(0.1),
                      ),
                    ),

                    // Right Side
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 9,
                      child: Container(
                        width: 4,
                        color: Colors.white.withOpacity(0.05),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
