import 'package:hive/hive.dart';
part 'erp_model.g.dart';
@HiveType(typeId : 0)
class ErpModel{
  @HiveField(0)
  final bool isloggedin;
  @HiveField(1)
  final String? FullName;
  @HiveField(2)
  final String? email;
  @HiveField(3)
  final String? password;
  const ErpModel(this.isloggedin, this.FullName, this.email,  this.password);
}
