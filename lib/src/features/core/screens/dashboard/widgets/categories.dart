import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/categories_model.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategories.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
              width: 170,
              height: 45,
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tDarkColor),
                    child: Center(
                      child: Text(
                        list[index].title,
                        style:
                            textTheme.headlineSmall?.apply(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                         list[index].heading,
                          style: textTheme.headlineSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          list[index].subHeading,
                          style: textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ),
    //     children: [
    //       SizedBox(
    //         width: 170,
    //         height: 45,
    //         child: Row(
    //           children: [
    //             Container(
    //               width: 45,
    //               height: 45,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: tDarkColor),
    //               child: Center(
    //                 child: Text(
    //                   "JS",
    //                   style:
    //                       textTheme.headlineSmall?.apply(color: Colors.white),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 5,
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Text(
    //                     "Python",
    //                     style: textTheme.headlineSmall,
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                   Text(
    //                     "10 Lessons",
    //                     style: textTheme.bodyMedium,
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         width: 170,
    //         height: 45,
    //         child: Row(
    //           children: [
    //             Container(
    //               width: 45,
    //               height: 45,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: tDarkColor),
    //               child: Center(
    //                 child: Text(
    //                   "JS",
    //                   style:
    //                       textTheme.headlineSmall?.apply(color: Colors.white),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 5,
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Text(
    //                     "Python",
    //                     style: textTheme.headlineSmall,
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                   Text(
    //                     "10 Lessons",
    //                     style: textTheme.bodyMedium,
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         width: 170,
    //         height: 45,
    //         child: Row(
    //           children: [
    //             Container(
    //               width: 45,
    //               height: 45,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: tDarkColor),
    //               child: Center(
    //                 child: Text(
    //                   "JS",
    //                   style:
    //                       textTheme.headlineSmall?.apply(color: Colors.white),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 5,
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Text(
    //                     "Python",
    //                     style: textTheme.headlineSmall,
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                   Text(
    //                     "10 Lessons",
    //                     style: textTheme.bodyMedium,
    //                     overflow: TextOverflow.ellipsis,
    //                   ),
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ],
       ),
     );
  }
}
