// 1 - Remover os duplicados
// 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
//     e mostre a quantidade de pessoas com mais de 18 anos
// 4 - Encontre a pessoa mais velha.
void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  List<String> pessoaList = [];
  List<String> pessoasTemp = [];
  List<String> filtro = [];
  List<String> filtroTemp = [];
  String nome;
  int masculino = 0;
  int feminino = 0;
  int qtde = 0;
  int maiorIdade = 0;

  //Removendo os duplicados
  for (var pessoa in pessoas) {
    if (!pessoaList.any((p) => p == pessoa)) {
      pessoaList.add(pessoa);
    }
  }

  pessoaList.forEach((pessoa) {
    if (pessoa.contains("Masculino")) {
      masculino++;
    }
    if (pessoa.contains("Feminino")) {
      feminino++;
    }

    pessoasTemp = pessoa.split("|");
    if (int.tryParse(pessoasTemp[1]) > 18) {
      filtro.add(pessoa);
      qtde++;
    }

    if (int.tryParse(pessoasTemp[1]) > maiorIdade) {
      maiorIdade = int.parse(pessoasTemp[1]);
      nome = pessoasTemp[0];
    }
  });

  //Filtro - Somente pessoas maiores de 18 anos
  print("******* Maiores de 18 anos *******\n");
  filtro.forEach((pessoa) {
    filtroTemp = pessoa.split("|");
    print("${filtroTemp[0]} - ${filtroTemp[1]} anos");
  });

  print("\nQuantidade de pessoas do sexo masculino: $masculino");
  print("Quantidade de pessoas do sexo feminino: $feminino");
  print("Quantidade de pessoas maiores de 18 anos: $qtde");
  print("Pessoa mais velha: $nome com $maiorIdade anos");
}
