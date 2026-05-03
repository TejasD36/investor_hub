import '../../../../core.dart';
import 'user_model.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
@HiveType(typeId: 2)
sealed class SessionModel with _$SessionModel {
  const factory SessionModel({@HiveField(0) required bool isLoggedIn, @HiveField(1) UserModel? user}) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) => _$SessionModelFromJson(json);
}
