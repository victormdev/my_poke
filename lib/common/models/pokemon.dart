class Pokemon {
  final String name;
  final String image;
  final List<String> type;
  final int id;
  final String num;
  
  factory Pokemon.fromMap(Map<String, dynamic> json){
    return Pokemon(
        name: json['name'],
        image: json['img'], 
        id: json['id'], 
        num: json['num'],
        type: (json['type'] as List<String>).map((e) => e).toList()
    );
  }

  Pokemon({
    required this.type, 
    required this.id, 
    required this.num, 
    required this.name, 
    required this.image
  });

}