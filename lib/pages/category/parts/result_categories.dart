import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/providers/api/category.dart';
import 'package:maral_cosmetics/providers/pages/categories.dart';

class ResultCategories extends ConsumerWidget {
  const ResultCategories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasData = ref.watch(hasCategoriesProvider);
    final bool loading = ref.watch(loadCategoryProvider);

    return Stack(
      children: [
        !hasData
            ? const NoResult()
            : Padding(
                padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final page = index ~/ pageSize + 1;
                    final indexInPage = index % pageSize;

                    DefaultParams arg =
                        DefaultParams(page: page, pageSize: pageSize);

                    AsyncValue<ResultCategory> resultCategories =
                        ref.watch(fetchCategoriesProvider(arg));

                    return resultCategories.when(
                      skipLoadingOnRefresh: true,
                      skipLoadingOnReload: true,
                      skipError: true,
                      data: (response) {
                        if (response.error != '') {
                          return null;
                        }
                        if (indexInPage >= response.categories!.length) {
                          return null;
                        }

                        CategoryModel category =
                            response.categories![indexInPage];
                        return Text(category.name);
                      },
                      error: (error, stackTrace) => errorMethod(error),
                      loading: () {
                        if (!loading) {
                          Future.delayed(
                            const Duration(),
                            () => ref
                                .read(loadCategoryProvider.notifier)
                                .state = true,
                          );
                        }
                        return null;
                      },
                    );
                  },
                ),
              ),
        loading ? loadWidget : const SizedBox(),
      ],
    );
  }
}
