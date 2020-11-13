// Baseado no array acima monte um relatório onde mostre
// Apresente a quantidade de pacientes com mais de 20 anos
// Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

void main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];
  
  List<String> sobrenomeList = [];
  List<String> pacientesTemp;
  List<String> pacienteList;
  String sobrenome;
  int qtde = 0;
  

  for (String paciente in pacientes) {
    pacientesTemp = paciente.split("|");
    sobrenome = pacientesTemp[0].split(" ").last;

    if (int.tryParse(pacientesTemp[1]) > 20) {
      qtde++;
    }

    if (!sobrenomeList.contains(sobrenome)) {
      sobrenomeList.add(sobrenome);
      print("\nFamília: $sobrenome");
      for (var p in pacientes) {
        pacienteList = p.split("|");
        if (sobrenome.toLowerCase() == pacienteList[0].split(' ').last.toLowerCase()) {
          print("${pacienteList[0]}");
        }
      }
    

    }
  }

  print("\nQuantidade pacientes com mais de 20 anos: $qtde");
}
