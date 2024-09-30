import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

  @override
  Widget build(BuildContext context) {
    GlobalKey textKey = GlobalKey();

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Roboto Flex',
              color: Color(0xff824D6A),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          ExpandableText(
            key: textKey,
            description,
            expandText: 'Ählisini Okamak',
            collapseText: 'Az Okamak',
            maxLines: 5,
            animation: true,
            linkStyle: const TextStyle(
              color: Color(0xff824D6A),
              fontSize: 14,
              fontFamily: 'Inter',
            ),
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff626262),
              fontFamily: 'Inter',
            ),
            animationDuration: const Duration(milliseconds: 300),
            animationCurve: Curves.linear,
          ),
        ],
      ),
    );
  }
}


// onExpansionChanged: (bool expanded) {
//         if (expanded) {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             final RenderBox renderBoxTitle =
//                 titleKey.currentContext?.findRenderObject() as RenderBox;

//             final RenderBox renderBoxChild =
//                 childKey.currentContext?.findRenderObject() as RenderBox;

//             final titleHeight = renderBoxTitle.size.height;
//             final childHeight = renderBoxChild.size.height;

//             if (childHeight > 0) {
//               scrollController.animateTo(
//                 scrollController.offset + titleHeight + childHeight,
//                 duration: const Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//               );
//             }
//           });
//         }
//       },