# Descrição
Em um cenário de crescimento da demanda por serviços de saúde, pequenas empresas, como clínicas e consultórios médicos, enfrentam o desafio de oferecer um atendimento ágil e eficiente aos seus pacientes. Para otimizar o processo de agendamento de consultas e melhorar a experiência dos usuários, foi idealizado o Saúde+, um aplicativo mobile que permitirá que pacientes marquem suas consultas de forma rápida, diretamente pelo celular. O app buscará eliminar as dificuldades tradicionais de agendamento, como a necessidade de ligações telefônicas, filas de espera ou indisponibilidade de horários, facilitando o gerenciamento tanto para pacientes quanto para a equipe administrativa do consultório.
O MVP do Saúde+, com as funcionalidades essenciais para permitir que os usuários realizem o agendamento de consultas médicas de maneira eficiente e rápida, é apresentado a seguir:
### Cadastro de Usuários: os pacientes podem criar um perfil básico inserindo informações como nome, e-mail, telefone e data de nascimento;
### Agendamento de Consultas: o app oferece um calendário com horários disponíveis para que os pacientes possam escolher a data e o horário que melhor se encaixa nas suas necessidades;
### Visualização de Consultas: os pacientes podem visualizar suas consultas agendadas, verificar detalhes como data, horário, especialidade e médico responsável, além de receber lembretes automáticos via notificação;
### Cancelamento e Remarcação: o MVP inclui a opção de cancelar ou remarcar consultas, proporcionando flexibilidade aos pacientes e ajudando a evitar faltas;
### Integração com o Consultório: a equipe administrativa do consultório tem acesso ao painel de gerenciamento, onde pode visualizar os agendamentos e organizar o fluxo de atendimento de forma otimizada.

## EQUIPE TÉCNICA:
### DANIEL VICTOR DE SOUSA - 2022011514
### PAULO SÉRGIO DO NASCIMENTO - 2022012164
### VANDERSON DE LIMA DA SILVA - 2022012674

## RELATÓRIO DE PRÁTICAS DE SEGURANÇA, TESTES AUTOMATIZADOS E VALIDAÇÃO DE PROJETO MOBILE PARA AGENDAMENTO DE CONSULTAS MÉDICAS EM UM CONSULTÓRIO


## Funcionalidades
#### Listar todos os alimentos (GET /api/foods)
Retorna uma lista de todos os alimentos no banco de dados.

#### Buscar um alimento específico (GET /api/foods/)
Retorna os detalhes de um alimento com base no ID fornecido.

#### Criar um novo alimento (POST /api/foods)
Cria um novo alimento com base nos dados fornecidos.

#### Atualizar um alimento existente (PUT /api/foods/)
Atualiza os dados de um alimento existente com base no ID fornecido.

#### Excluir um alimento (DELETE /api/foods/)
Remove um alimento com base no ID fornecido.

## Estrutura
O projeto utiliza uma estrutura em camadas para melhor organização e manutenção do código.

## Modelo
O esquema define a estrutura dos documentos de alimentos, incluindo campos como name, category, quantity, expirationDate e price.
