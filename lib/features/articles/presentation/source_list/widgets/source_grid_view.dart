import 'item_source.dart';

import '../bloc.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget sourceGridView(List<Source> sourceList) => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      padding: const EdgeInsets.all(AppDimens.margin),
      itemCount: sourceList.length,
      itemBuilder: (context, index) => sourceItem(sourceList[index]),
    );
