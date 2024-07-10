// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookmarkDataAdapter extends TypeAdapter<BookmarkData> {
  @override
  final int typeId = 0;

  @override
  BookmarkData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookmarkData(
      id: fields[0] as int,
      count: fields[1] as int,
      name: fields[4] as String,
      cost: fields[2] as int,
      img: fields[3] as String,
      isSave: fields[6] as bool,
      isFavourite: fields[5] as bool,
      isSelect: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BookmarkData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.cost)
      ..writeByte(3)
      ..write(obj.img)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.isFavourite)
      ..writeByte(6)
      ..write(obj.isSave)
      ..writeByte(7)
      ..write(obj.isSelect);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
