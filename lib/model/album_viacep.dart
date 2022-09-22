class Album {
  final String cep;
  final String logradouro;
  final String bairro;
  final String localidade;

  const Album({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.localidade,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        cep: json['cep'],
        logradouro: json['logradouro'],
        bairro: json['bairro'],
        localidade: json['localidade']
    );
  }
}