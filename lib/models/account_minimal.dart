import '../tools/res.dart';

class AccountModelMinimal {
  String? name;
  String? entityimage_url;
  String accountid;
  String accountnumber;

  AccountModelMinimal({this.name, this.entityimage_url, required this.accountid, required this.accountnumber});

  factory AccountModelMinimal.fromJson(Map<String, dynamic> json) {
    return AccountModelMinimal(
      name: json["name"],
      entityimage_url: json['entityimage_url'].toString().startsWith('http') ? json['entityimage_url'] : '${Res.host}accounts(${json['accountid']})/entityimage/\$value',
      accountid: json["accountid"],
      accountnumber: json['accountnumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "entityimage_url": entityimage_url,
      "accountid": accountid,
      "accountnumber": accountnumber,
    };
  }

//

}