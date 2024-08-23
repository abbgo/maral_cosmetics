import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.title,
    required this.description,
    required this.scrollController,
  });

  final String title, description;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    GlobalKey titleKey = GlobalKey();
    GlobalKey childKey = GlobalKey();

    return ExpansionTile(
      key: titleKey,
      onExpansionChanged: (bool expanded) {
        if (expanded) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final RenderBox renderBoxTitle =
                titleKey.currentContext?.findRenderObject() as RenderBox;

            final RenderBox renderBoxChild =
                childKey.currentContext?.findRenderObject() as RenderBox;

            final titleHeight = renderBoxTitle.size.height;
            final childHeight = renderBoxChild.size.height;

            if (childHeight > 0) {
              scrollController.animateTo(
                scrollController.offset + titleHeight + childHeight,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          });
        }
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      iconColor: defaultColor,
      collapsedIconColor: defaultColor,
      backgroundColor: Colors.blueGrey.withOpacity(.1),
      childrenPadding: const EdgeInsets.all(20),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'HeyWowRegular',
          color: defaultColor,
        ),
      ),
      children: [
        Text(
          key: childKey,
          description,
          style: const TextStyle(fontFamily: 'HeyWowRegular'),
        )
      ],
    );
  }
}
