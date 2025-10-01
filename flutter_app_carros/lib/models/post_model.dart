class PostModel {
  final String codigo;
  final String nome;

  PostModel(this.codigo, this.nome);

  factory PostModel.fromJson(Map json) {
    return PostModel(json['codigo'], json['nome']);
  }
}
