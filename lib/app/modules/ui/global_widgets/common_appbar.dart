import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color.dart';

class CommonAppbar extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final String? text;
  final Color? textColor;
  const CommonAppbar({
    super.key,
    required this.medium,
    this.backgroundColor,
    this.iconColor,
    this.text,
    this.textColor,
  });

  final TextStyle? medium;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .2,
      width: Get.width,
      color: backgroundColor ?? AppColors.primaryColor,
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: Get.height * .05,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: iconColor ?? Colors.white,
                    ),
                    Text(
                      text ?? "Birol Dinajpur",
                      style: medium?.copyWith(color: textColor ?? Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Get.width * .1, vertical: Get.height * .02),
                height: Get.height * .05,
                width: Get.width,
                child: SearchBar(
                  hintText: "search for shop & restaurant",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
