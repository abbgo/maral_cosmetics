import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_menus/parts/home_menus_child.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class HomeMenus extends StatefulWidget {
  const HomeMenus({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<HomeMenus> createState() => _HomeMenusState();
}

class _HomeMenusState extends State<HomeMenus> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> menuKeys =
      List.generate(homeMenus.length, (index) => GlobalKey());

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToItem(int index) {
    final keyContext = menuKeys[index].currentContext;
    if (keyContext != null) {
      // Get the position of the child relative to the screen
      final box = keyContext.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero);

      // Get the screen width
      final screenWidth = MediaQuery.of(context).size.width;

      // Calculate the scroll offset if the item is off-screen
      if (position.dx < 0 || position.dx + box.size.width > screenWidth) {
        double offset = _scrollController.offset + position.dx;
        _scrollController.animateTo(
          offset,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: 50,
      color: const Color(0xffFAF8F9),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: homeMenus.length,
        itemBuilder: (context, index) => HomeMenusChild(
          text: homeMenus[index],
          menuIndex: index,
          menuKey: menuKeys[index],
          scrollToItem: _scrollToItem,
          isLast: index == homeMenus.length - 1,
          pageController: widget.pageController,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
