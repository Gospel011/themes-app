// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_options.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemeOptionsAdapter extends TypeAdapter<ThemeOptions> {
  @override
  final int typeId = 1;

  @override
  ThemeOptions read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ThemeOptions.light;
      case 1:
        return ThemeOptions.dark;
      default:
        return ThemeOptions.light;
    }
  }

  @override
  void write(BinaryWriter writer, ThemeOptions obj) {
    switch (obj) {
      case ThemeOptions.light:
        writer.writeByte(0);
        break;
      case ThemeOptions.dark:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeOptionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
