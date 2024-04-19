
class AccountList {
  final int id;
  final String name;
  final String slug;


  AccountList({
    required this.id,
    required this.name,
    required this.slug,

  });

  factory AccountList.fromJson(Map<String, dynamic> json) {
    return AccountList(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
    );
  }

}