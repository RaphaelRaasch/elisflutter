class CurseModel {
  bool atribute;
  String author;
  String description;
  String local;
  String title;
  String date;

  CurseModel(
      {this.atribute,
      this.author,
      this.description,
      this.local,
      this.title,
      this.date});

  CurseModel.fromJson(Map<String, dynamic> json) {
    atribute = json['atribute'];
    author = json['author'];
    description = json['description'];
    local = json['local'];
    title = json['title'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['atribute'] = this.atribute;
    data['author'] = this.author;
    data['description'] = this.description;
    data['local'] = this.local;
    data['title'] = this.title;
    data['date'] = this.date;
    return data;
  }
}
