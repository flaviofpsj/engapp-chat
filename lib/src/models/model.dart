class Model {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final String timeStatus;
  final String call;
  
  Model({this.name, this.message, this.time, this.avatarUrl, this.timeStatus, this.call});
}

List<Model> model = [
  new Model(
      name: "Fellipe Malta",
      message: "I'm Jonny Bravo!",
      time: "17:12",
      avatarUrl: "http://engapplabs.herokuapp.com/assets/img/malta.png",
      timeStatus: 'Right now',
      call: 'Today 14:58',
  ),
  new Model(
      name: "Aurélio Buarque",
      message: "Vaca 505!",
      time: "15:59",
      avatarUrl: "http://engapplabs.herokuapp.com/assets/img/aurelio.png",
      timeStatus: '2 minutes ago',
      call: 'Yesterday 10:25',
  ),
  new Model(
      name: "Flávio Farias",
      message: "Handsome guy!",
      time: "13:27",
      avatarUrl: "http://engapplabs.herokuapp.com/assets/img/flavio.png",
      timeStatus: '3 minutes ago',
      call: 'July 21 04:17',
  ),
  new Model(
      name: "Luccas Augusto",
      message: "I'm without Ritalina!",
      time: "11:45",
      avatarUrl: "http://engapplabs.herokuapp.com/assets/img/luccas.png",
      timeStatus: '5 minutes ago',
      call: 'May 31 23:41',
  ),
  new Model(
      name: "Pedro Soares",
      message: "Let's drink!",
      time: "08:21",
      avatarUrl: "http://engapplabs.herokuapp.com/assets/img/pedro.png",
      timeStatus: '8 minutes ago',
      call: 'April 17 09:33',
  ),
  new Model(
      name: "Hugo Davi",
      message: "Hugordo!",
      time: "07:38",
      avatarUrl: "http://engapplabs.herokuapp.com/assets/img/hugo.png",
      timeStatus: '10 minutes ago',
      call: 'March 10 05:04',
  ),
];