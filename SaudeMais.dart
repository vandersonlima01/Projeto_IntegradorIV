import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ClinicaApp(),
  ));
}

class ClinicaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1e1e1),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("  Saúde +", style: TextStyle(fontSize: 40)),
              ElevatedButton(
                  child: Text("Médico"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login_profissional(),
                      ),
                    );
                  }),
              ElevatedButton(
                  child: Text("Paciente"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login_paciente(),
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class login_paciente extends StatelessWidget {
  Widget widgetTextField(String hintText, IconData icon) {
    return Container(
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText, // Texto de dica
          prefixIcon: Icon(icon, color: Colors.blue), // Ícone no início
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // Bordas arredondadas
            borderSide: BorderSide(
                color: Colors.blue, width: 1), // Cor e largura da borda
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(90),
            child: Column(
              children: [
                Text("Saúde+Daniel",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                widgetTextField("CPF", Icons.person),
                SizedBox(height: 16),
                widgetTextField("Senha", Icons.lock_rounded),
                TextButton(
                  child: Text('Esqueci a senha'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Cor do texto
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Padding interno
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Bordas arredondadas
                    ),
                  ),
                  onPressed: () {
                    // Ação quando o botão é pressionado
                  },
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize: MaterialStateProperty.all(Size(200, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Bordas arredondadas
                    )),
                  ),
                  child: Text('Entrar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePaciente()),
                    );
                  },
                ),
                SizedBox(height: 24), // Espaço entre os botões
                TextButton(
                  child: Text(
                    'Não tem conta, registri-se',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Cor do texto
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Padding interno
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Bordas arredondadas
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Cadastro_profissional()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class login_profissional extends StatelessWidget {
  Widget widgetTextField(String hintText, IconData icon) {
    return Container(
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText, // Texto de dica
          prefixIcon: Icon(icon, color: Colors.blue), // Ícone no início
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // Bordas arredondadas
            borderSide: BorderSide(
                color: Colors.blue, width: 1), // Cor e largura da borda
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(90),
            child: Column(
              children: [
                Text("Saúde+Daniel",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                widgetTextField("CPF", Icons.person),
                SizedBox(height: 16),
                widgetTextField("Senha", Icons.lock_rounded),
                TextButton(
                  child: Text('Esqueci a senha'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Cor do texto
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Padding interno
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Bordas arredondadas
                    ),
                  ),
                  onPressed: () {
                    // Ação quando o botão é pressionado
                  },
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize: MaterialStateProperty.all(Size(200, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Bordas arredondadas
                    )),
                  ),
                  child: Text('Entrar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GestaoConsulta()),
                    );
                  },
                ),
                SizedBox(height: 24), // Espaço entre os botões
                TextButton(
                  child: Text(
                    'Não tem conta, registri-se',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Cor do texto
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Padding interno
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Bordas arredondadas
                    ),
                  ),
                  onPressed: () => Cadastro_profissional(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Supondo que você tenha esta função definida em algum lugar do seu código
Widget widgetTextField2(String label, IconData icon) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Borda arredondada
        ),
        contentPadding:
            EdgeInsets.symmetric(horizontal: 20), // Aumentar o tamanho
      ),
    ),
  );
}

class CadastroPaciente extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Saúde+ Daniel",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Registro - crie sua conta",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              widgetTextField2('Nome', Icons.person),
              widgetTextField2('Email', Icons.email),
              widgetTextField2('Senha', Icons.password),
              widgetTextField2('Confirmar Senha', Icons.password_outlined),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePaciente()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text(
                  'Cadastrar',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cadastro_profissional extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(90),
            child: Column(
              children: [
                Text("Saúde+ Daniel"),
                Text("Registro - crie sua conta"),
                widgetTextField2('Nome', Icons.person),
                widgetTextField2('Email', Icons.email),
                widgetTextField2('Senha', Icons.password),
                widgetTextField2('Confirmar Senha', Icons.password_outlined),
                ElevatedButton(
                  onPressed: () => HomePaciente(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePaciente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saúde+ Daniel'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Color(0xff0856e8),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () =>
                login_paciente(), // Presumivelmente uma função definida em outro lugar
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Bem-vindo',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 110,
              child: DrawerHeader(
                child: Text('Daniel Victor', style: TextStyle(fontSize: 24)),
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Perfil()),
                  );
                },
              ),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePaciente()),
                  );
                },
              ),
              title: Text('Início'),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.calendar_month),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Historico()),
                  );
                },
              ),
              title: Text('Histórico de Consultas'),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Configurar()),
                  );
                },
              ),
              title: Text('Configurações'),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.local_hospital), // Ícone de maleta de saúde
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BuscaProfissionais()),
                  );
                },
              ),
              title: Text('Profissionais'),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClinicaApp()),
                  );
                },
              ),
              title: Text('Sair'),
            ),
          ],
        ),
      ),
    );
  }
}

class Perfil extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Volta para a tela anterior
            },
          ),
        ),
      ),
    );
  }
}

class GestaoConsulta extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gestão de Consultas'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Volta para a tela anterior
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding:
                EdgeInsets.all(16.0), // Adiciona um padding ao redor do Column
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha o texto à esquerda
              children: <Widget>[
                Text(
                  'Consultas agendadas do mês',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), // Espaço entre o texto e os containers
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 16.0, // Espaço horizontal entre os Containers
                      runSpacing: 16.0, // Espaço vertical entre os Containers
                      children: <Widget>[
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(
                              16.0), // Padding interno para o texto
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.toys,
                                      size:
                                          20), // Substitua por um ícone apropriado
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Obturação do siso',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.calendar_today, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '13/09/2024',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '15:00 hrs',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    'Local: Clínica Daniel',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20), // Espaço acima do botão
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Ação do botão "Visualizar"
                                  },
                                  child: Text('Visualizar'),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffcbcbcb),
                            border: Border.all(color: Colors.black, width: 0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(
                              16.0), // Padding interno para o texto
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.toys,
                                      size:
                                          20), // Substitua por um ícone apropriado
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Obturação do siso',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.calendar_today, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '13/09/2024',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '15:00 hrs',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    'Local: Clínica Daniel',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20), // Espaço acima do botão
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RelatorioConsulta()));
                                  },
                                  child: Text('Visualizar'),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffcbcbcb),
                            border: Border.all(color: Colors.black, width: 0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RelatorioConsulta extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório da Consulta'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Relatório da Consulta',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Espaço entre o título e o relatório
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xffe0e0e0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Consulta: Obturação do siso',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Data: 13/09/2024',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hora: 15:00 hrs',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Local: Clínica Daniel',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Descrição:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A consulta é para realização de obturação do siso. O procedimento '
                    'envolve a limpeza e preenchimento da cavidade do dente para '
                    'restaurar sua função e forma. A consulta deve ser realizada às '
                    '15:00 hrs no local indicado.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Spacer(), // Para empurrar os botões para o fundo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão "Editar"
                  },
                  child: Text('Editar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão "Cancelar"
                  },
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GestaoConsulta()),
                    );
                  },
                  child: Text('Confirmar'),
                ),
              ],
            ),
            SizedBox(height: 20), // Espaço abaixo dos botões
          ],
        ),
      ),
    );
  }
}

class BuscaProfissionais extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding:
                EdgeInsets.all(16.0), // Ajustei a margem para algo mais padrão
            child: Column(
              children: [
                Text(
                  "Saúde+ Daniel",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 16), // Espaço entre o texto e o campo de pesquisa
                widgetTextField2('Pesquise', Icons.search),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Número de colunas
                      crossAxisSpacing: 10, // Espaçamento horizontal
                      mainAxisSpacing: 10, // Espaçamento vertical
                    ),
                    itemCount: 20, // Número de itens na grid
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Notificar extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notificações'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(0), // Ajuste o padding conforme necessário
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Alinha os containers à esquerda
            children: <Widget>[
              Container(
                width: 400.0, // Ajuste o width conforme necessário
                height: 50.0,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today, size: 24.0), // Ícone de consulta
                    SizedBox(width: 10),
                    Text('Consulta agendada!',
                        style: TextStyle(fontSize: 14.0)),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
              SizedBox(height: 10), // Espaçamento entre os containers
              Container(
                width: 400.0, // Ajuste o width conforme necessário
                height: 50.0,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.event, size: 24.0), // Ícone de eventos
                    SizedBox(width: 10),
                    Text('Novo evento!', style: TextStyle(fontSize: 14.0)),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
              SizedBox(height: 10), // Espaçamento entre os containers
              Container(
                width: 400.0, // Ajuste o width conforme necessário
                height: 50.0,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.meeting_room, size: 24.0), // Ícone de reuniões
                    SizedBox(width: 10),
                    Text('Lembrete de reunião!',
                        style: TextStyle(fontSize: 14.0)),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Historico extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Histórico de Consultas'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Volta para a tela anterior
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding:
                EdgeInsets.all(16.0), // Adiciona um padding ao redor do Column
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha o texto à esquerda
              children: <Widget>[
                Text(
                  'Consultas agendadas do mês',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), // Espaço entre o texto e os containers
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 16.0, // Espaço horizontal entre os Containers
                      runSpacing: 16.0, // Espaço vertical entre os Containers
                      children: <Widget>[
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(
                              16.0), // Padding interno para o texto
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.toys,
                                      size:
                                          20), // Substitua por um ícone apropriado
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Obturação do siso',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.calendar_today, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '13/09/2024',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '15:00 hrs',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    'Local: Clínica Daniel',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffcbcbcb),
                            border: Border.all(color: Colors.black, width: 0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(
                              16.0), // Padding interno para o texto
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.toys,
                                      size:
                                          20), // Substitua por um ícone apropriado
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Obturação do siso',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.calendar_today, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '13/09/2024',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    '15:00 hrs',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, size: 20),
                                  SizedBox(width: 8),
                                  Text(
                                    'Local: Clínica Daniel',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffcbcbcb),
                            border: Border.all(color: Colors.black, width: 0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat Bot'),
        ),
      ),
    );
  }
}

class Configurar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Color.fromARGB(255, 0, 97, 68),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Conta'),
              onTap: () {
                // Adicione a lógica para navegar para a tela de Conta, se necessário
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notificações'),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notificar()),
                  );
                },
                child: Text('Ir para Notificar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 163, 114),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Idioma'),
              onTap: () {
                // Adicione a lógica para navegar para a tela de Idioma, se necessário
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Dados Pessoais'),
              onTap: () {
                // Adicione a lógica para navegar para a tela de Dados Pessoais, se necessário
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Ajuda'),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Suporte()),
                  );
                },
                child: Text('Ver Suporte'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 163, 114),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Suporte extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notificações'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Volta para a tela anterior
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_outward),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Wrap(
              spacing: 16.0, // Espaço horizontal entre os Containers
              runSpacing: 16.0, // Espaço vertical entre os Containers
              children: <Widget>[
                Container(
                  width: 300,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center, // Texto Centralizado
                    child: Text('Suporte', style: TextStyle(fontSize: 30)),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                        color: Colors.black,
                        width: 2), // Borda preta de 2 pixels
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center, // Texto Centralizado
                    child: Text('Suporte', style: TextStyle(fontSize: 30)),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius:
                        BorderRadius.circular(10.0), // Borda preta de 2 pixels
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center, // Texto Centralizado
                    child: Text('Suporte', style: TextStyle(fontSize: 30)),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius:
                        BorderRadius.circular(10.0), // Borda preta de 2 pixels
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center, // Texto Centralizado
                    child: Text('Suporte', style: TextStyle(fontSize: 30)),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius:
                        BorderRadius.circular(10.0), // Borda preta de 2 pixels
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

widgetTextField(String texto, IconData icone) {
  return TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      icon: Icon(
        icone,
        color: Colors.white,
      ),
      hintText: texto,
      contentPadding: EdgeInsets.all(30),
    ),
  );
}
