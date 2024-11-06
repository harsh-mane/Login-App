import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final String image, title, subTitle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        image: AssetImage(image),
        height: Size.height * imageHeight,
      ),
      SizedBox(
        height: heightBetween,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      Text(
        subTitle,textAlign: textAlign,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ]);
  }
}
