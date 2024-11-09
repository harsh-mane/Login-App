import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashboardSearch,
            style: textTheme.headlineMedium?.apply(color: Colors.grey.withOpacity(0.5)),
          ),
          Icon(
            Icons.mic,
            size: 25,
          )
        ],
      ),
    );
  }
}

