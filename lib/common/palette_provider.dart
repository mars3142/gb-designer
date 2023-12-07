import 'package:gb_designer/common/palette.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final paletteProvider = StateNotifierProvider.family<PaletteProvider, Palette, int>(
  (ref, index) => PaletteProvider(index),
);

class PaletteProvider extends StateNotifier<Palette> {
  PaletteProvider(int index) : super(Palette(index: index));

  void updatePalette(int index) {
    state = Palette(index: index);
  }
}
