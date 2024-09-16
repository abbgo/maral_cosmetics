import 'package:flutter_riverpod/flutter_riverpod.dart';

var gallerySearchProvider = StateProvider<String>((ref) => '');
var hasGalleriesProvider = StateProvider.autoDispose<bool>((ref) => true);
final loadGalleryProvider = StateProvider<bool>((ref) => true);
