import 'package:cached_network_image/cached_network_image.dart';
import 'all.dart';

/// Created by Saeed Fekri on 1/2/2025.
///
/// @email: en.saeedfekri@gmail.com

Widget cacheImage(
  String imageUrl, {
  BoxFit fit = BoxFit.cover,
  BoxFit nullFit = BoxFit.contain,
  String nullContent = AppAssets.imgEmpty,
  BorderRadius? borderRadius,
}) {
  return imageUrl == ""
      ? ClipRRect(borderRadius: borderRadius ?? BorderRadius.zero, child: Image.asset(nullContent, fit: nullFit))
      : CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.zero,
              image: DecorationImage(image: imageProvider, fit: fit),
            ),
          ),
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Image.asset(nullContent, fit: nullFit),
        );
}
