// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erp_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ErpModelAdapter extends TypeAdapter<ErpModel> {
  @override
  final int typeId = 0;

  @override
  ErpModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ErpModel(
      fields[0] as bool,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ErpModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.isloggedin)
      ..writeByte(1)
      ..write(obj.FullName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErpModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
