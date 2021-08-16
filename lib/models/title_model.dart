class titleModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  titleModel({this.userId, this.id, this.title, this.body});

  titleModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }

  static List<titleModel> allResponse(data){
    return (data as List )
        .map((e)=>titleModel.fromJson(e))
        .toList();
  }
}