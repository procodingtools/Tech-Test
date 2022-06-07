class FilterModel {
  String? keyword;
  String? province;
  String? state;

  bool get isNull => keyword == null && province == null && state == null;


  FilterModel({this.keyword, this.province, this.state});

  Map<String, String> toRequest() {
    Map<String, String> data = {};
    if (isNull) return data;

    String query = "";

    if (keyword != null) {
      query +=
          "(contains(name, '$keyword') or contains(accountnumber, '$keyword')) and ";
    }
    if (province != null) {
      query +=
      "(address1_stateorprovince eq '$province' or address2_stateorprovince eq '$province') and ";
    }
    if (state != null) {
      query += "statecode eq $state and ";
    }

    query = query.substring(0, query.lastIndexOf(' and '));

    data['\$filter'] = query;

    return data;
  }
}
