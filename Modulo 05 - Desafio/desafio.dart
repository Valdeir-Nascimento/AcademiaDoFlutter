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
      print("Família: $sobrenome");
      for (int i = 0; i < pacientesTemp.length; i++) {
        if (sobrenome.toUpperCase() == pacientesTemp[0].split(" ").last.toLowerCase()) {
          print("${pacientesTemp[0]}");
        }
      }
    }
  }

  print("Quantidade pacientes com mais de 20 anos: $qtde");
}
