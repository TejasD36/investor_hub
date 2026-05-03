// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DealModelAdapter extends TypeAdapter<DealModel> {
  @override
  final typeId = 0;

  @override
  DealModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DealModel(
      id: fields[0] as String,
      companyName: fields[1] as String,
      industry: fields[2] as String,
      investmentRequired: (fields[3] as num).toDouble(),
      expectedRoi: (fields[4] as num).toDouble(),
      riskLevel: fields[5] as String,
      status: fields[6] as String,
      overview: fields[7] as String,
      financialHighlights: fields[8] as String,
      riskExplanation: fields[9] as String,
      logoUrl: fields[10] as String?,
      createdAt: fields[11] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DealModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.companyName)
      ..writeByte(2)
      ..write(obj.industry)
      ..writeByte(3)
      ..write(obj.investmentRequired)
      ..writeByte(4)
      ..write(obj.expectedRoi)
      ..writeByte(5)
      ..write(obj.riskLevel)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.overview)
      ..writeByte(8)
      ..write(obj.financialHighlights)
      ..writeByte(9)
      ..write(obj.riskExplanation)
      ..writeByte(10)
      ..write(obj.logoUrl)
      ..writeByte(11)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DealModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DealModel _$DealModelFromJson(Map<String, dynamic> json) => _DealModel(
  id: json['id'] as String,
  companyName: json['companyName'] as String,
  industry: json['industry'] as String,
  investmentRequired: (json['investmentRequired'] as num).toDouble(),
  expectedRoi: (json['expectedRoi'] as num).toDouble(),
  riskLevel: json['riskLevel'] as String,
  status: json['status'] as String,
  overview: json['overview'] as String,
  financialHighlights: json['financialHighlights'] as String,
  riskExplanation: json['riskExplanation'] as String,
  logoUrl: json['logoUrl'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$DealModelToJson(_DealModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'industry': instance.industry,
      'investmentRequired': instance.investmentRequired,
      'expectedRoi': instance.expectedRoi,
      'riskLevel': instance.riskLevel,
      'status': instance.status,
      'overview': instance.overview,
      'financialHighlights': instance.financialHighlights,
      'riskExplanation': instance.riskExplanation,
      'logoUrl': instance.logoUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
