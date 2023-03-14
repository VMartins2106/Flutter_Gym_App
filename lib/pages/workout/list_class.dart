class ClassList{
  int id;
  String className;
  String classDifficult;
  String classDuration;
  bool isFav;
  String classImage;
  String trainer;
  String trainerImage;

  ClassList({
    required this.id,
    required this.className,
    required this.classDifficult,
    required this.classDuration,
    required this.isFav,
    required this.classImage,
    required this.trainer,
    required this.trainerImage,
  });

}

List<ClassList> mostPopular = [
  ClassList(
    id: 1,
    className: 'Quadríceps',
    classDifficult: 'Intermediário',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://sportlife.com.br/wp-content/uploads/2022/10/treino-1.jpg',
    trainer: 'Johann',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Avançado',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://treinomestre.com.br/wp-content/uploads/2016/06/Divisao-de-treinamento-na-musculacao.jpg.webp',
    trainer: 'Johann',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Bíceps',
    classDifficult: 'Intermediário',
    classDuration: '1 hora',
    isFav: false,
    classImage: 'https://www.homemnoespelho.com.br/wp-content/uploads/2019/04/T%C3%A9cnicas-avan%C3%A7adas-para-deixar-o-treino-mais-pesado-isometria-Homem-No-Espelho-3.jpg',
    trainer: 'Johann',
    trainerImage: "",
  ),

];

List<ClassList> allClasses = [
  ClassList(
    id: 1,
    className: 'Polichinelo',
    classDifficult: 'Iniciante',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://www.blog.bioritmo.com.br/wp-content/uploads/2021/07/shutterstock_421876885-2.jpg',
    trainer: 'Johann',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Peito',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.feitodeiridium.com.br/wp-content/uploads/2016/08/supino-truque-1.jpg',
    trainer: 'Johann',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Intermediário',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://blogscdn.thehut.net/wp-content/uploads/sites/461/2018/03/20100404/biceps.jpg',
    trainer: 'Johann',
    trainerImage: "",
  ),
];
List<ClassList> mostPopularRonnie = [
  ClassList(
    id: 1,
    className: 'Quadríceps',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://fitnessvolt.com/wp-content/uploads/2022/01/coleman-squat-750x469.jpg',
    trainer: 'Ronnie',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Avançado',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://dicasdemusculacao.org/wp-content/uploads/2019/03/ronnie-coleman-exercicio-trapezio.jpg',
    trainer: 'Ronnie',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Bíceps',
    classDifficult: 'Expert',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.muscleandfitness.com/wp-content/uploads/2012/07/protrain_ronnie_thumb.jpg?quality=86&strip=all',
    trainer: 'Ronnie',
    trainerImage: "",
  ),

];

List<ClassList> allClassesRonnie = [
  ClassList(
    id: 1,
    className: 'Off Season',
    classDifficult: 'Avançado',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/AyorTG3OFNg/maxresdefault.jpg',
    trainer: 'Ronnie',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Peito',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://dicasdemusculacao.org/wp-content/uploads/2019/03/ronnie-coleman-treino-peitoral-com-halteres.jpg',
    trainer: 'Ronnie',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.wellnesspitch.com/wp-content/uploads/2020/11/Ronnie-Coleman-Workout-Routine-300x200.jpg',
    trainer: 'Ronnie',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularBreier = [
  ClassList(
    id: 1,
    className: 'Peito',
    classDifficult: 'Intermediário',
    classDuration: '1 hora1',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/MHlwVGr4fOQ/maxresdefault.jpg',
    trainer: 'Breier',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Avançado',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/RwGzDd4GVcM/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGHIgUShBMA8=&rs=AOn4CLCgOY4TIPHXUgfjV0x9cNwvosV-ew',
    trainer: 'Breier',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Bíceps',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/UtZOjsWOQgU/maxresdefault.jpg',
    trainer: 'Breier',
    trainerImage: "",
  ),

];

List<ClassList> allClassesBreier = [
  ClassList(
    id: 1,
    className: 'Cachorrada',
    classDifficult: 'Expert',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/nOuflTh9koM/maxresdefault.jpg',
    trainer: 'Breier',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Quadríceps',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://treinomestre.com.br/wp-content/uploads/2020/09/quadriceps-treino-musculos.jpg',
    trainer: 'Breier',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Avançado',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://musculacaoonline.com.br/wp-content/uploads/2015/01/Treino-de-hipertrofia-avan%C3%A7ado-para-o-tr%C3%ADceps-e1518776446640-1280x720.jpg',
    trainer: 'Breier',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularZyzz = [
  ClassList(
    id: 1,
    className: 'Peito',
    classDifficult: 'Eterno',
    classDuration: '12 horas',
    isFav: false,
    classImage: 'https://www.sandrolenzi.com.br/wp-content/uploads/2017/02/supino-reto.jpg',
    trainer: 'Zyzz',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Eterno',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://www.hipertrofia.org/blog/wp-content/uploads/2018/10/execu%C3%A7%C3%A3o-do-puxador-frente.jpg',
    trainer: 'Zyzz',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Bíceps',
    classDifficult: 'Eterno',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.mundoboaforma.com.br/wp-content/uploads/2016/08/rosca-scott1.jpg',
    trainer: 'Zyzz',
    trainerImage: "",
  ),

];

List<ClassList> allClassesZyzz = [
  ClassList(
    id: 1,
    className: 'Voar',
    classDifficult: 'Eterno',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://lindyhealth.b-cdn.net/wp-content/uploads/2022/05/zyzz-pose-how-to-iconic.png',
    trainer: 'Zyzz',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Quadríceps',
    classDifficult: 'Eterno',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.hipertrofia.org/blog/wp-content/uploads/2020/01/treino-quadriceps.jpg',
    trainer: 'Zyzz',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Eterno',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'http://3.bp.blogspot.com/--93tNY0tUuU/URBZ4BSh-iI/AAAAAAAABEQ/zFDB7DheEYA/s1600/triceps+banco.jpg',
    trainer: 'Zyzz',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularArnold = [
  ClassList(
    id: 1,
    className: 'Peito',
    classDifficult: 'Supremo',
    classDuration: '8 horas',
    isFav: false,
    classImage: 'https://www.dicasdetreino.com.br/wp-content/uploads/2019/04/Treino-de-Peito-do-Arnold-Schwarzenegger-Supino-Inclinado.jpg',
    trainer: 'Arnold',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Supremo',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://fanaticospormusculacao.com/wp-content/uploads/2018/04/remada-sentada-arnold.jpg',
    trainer: 'Arnold',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Biceps',
    classDifficult: 'Eterno',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.dicasdetreino.com.br/wp-content/uploads/2019/04/Treino-de-B%C3%ADceps-do-Arnold-Schwarzenegger.jpg',
    trainer: 'Arnold',
    trainerImage: "",
  ),

];

List<ClassList> allClassesArnold = [
  ClassList(
    id: 1,
    className: 'Fundador',
    classDifficult: 'Supremo',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'http://esportividade.com.br/wp-content/uploads/2022/02/arnold-schwarzenegger-sao-paulo.jpg',
    trainer: 'Arnold',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Quadríceps',
    classDifficult: 'Supremo',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://i.pinimg.com/originals/af/83/b6/af83b67eb34664d1eb366aa3c182bc71.jpg',
    trainer: 'Arnold',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Supremo',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.hipertrofia.org/blog/wp-content/uploads/2018/11/triceps-banco.jpg',
    trainer: 'Arnold',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularJay = [
  ClassList(
    id: 1,
    className: 'Peito',
    classDifficult: 'Ultra',
    classDuration: '8 horas',
    isFav: false,
    classImage: 'https://fitnessvolt.com/wp-content/uploads/2018/01/Jay-Cutler-Bench-Press-1024x576.jpg',
    trainer: 'Jay',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Ultra',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://www.bodybuilding.com/fun/images/2011/jay-cutler-back-workout_b.jpg',
    trainer: 'Jay',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Bíceps',
    classDifficult: 'Ultra',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://img3.goodfon.com/original/1600x900/8/31/dzhey-katler-jay-cutler-847.jpg',
    trainer: 'Jay',
    trainerImage: "",
  ),

];

List<ClassList> allClassesJay = [
  ClassList(
    id: 1,
    className: 'Quad Stomp',
    classDifficult: 'Ultra',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/PiddQWk25SA/mqdefault.jpg',
    trainer: 'Jay',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Cardio',
    classDifficult: 'Ultra',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/OTGPCs2RW9M/maxresdefault.jpg',
    trainer: 'Jay',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Ultra',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://fitnessvolt.com/wp-content/uploads/2019/01/Jay-Cutler-tricep-workout-tips-1.jpg',
    trainer: 'Jay',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularEddie = [
  ClassList(
    id: 1,
    className: 'Peito',
    classDifficult: 'Beast',
    classDuration: '9 horas',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/pIBxLctOgzg/maxresdefault.jpg',
    trainer: 'Eddie',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Costas',
    classDifficult: 'Beast',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://e0.pxfuel.com/wallpapers/436/372/desktop-wallpaper-eddie-hall-and-paddy-mcguinness-lifted-kettlebells-with-their-manhoods-muscle-fitness.jpg',
    trainer: 'Eddie',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Bíceps',
    classDifficult: 'Beast',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://fitnessvolt.com/wp-content/uploads/2019/07/eddie-hall-tears-his-bicep.jpg',
    trainer: 'Eddie',
    trainerImage: "",
  ),

];

List<ClassList> allClassesEddie = [
  ClassList(
    id: 1,
    className: 'Off Season',
    classDifficult: 'Beast',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/eddie-hall-weight-loss-1631533770.jpg?crop=1xw:1xh;center,top&resize=1200:*',
    trainer: 'Eddie',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Squat',
    classDifficult: 'Beast',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://external-preview.redd.it/AOy7IUZX75iNUlvYaqas_e2R9TyOW6JWtbFCUPt_-B4.png?width=640&crop=smart&format=pjpg&auto=webp&s=7559fdaea40d87b36fc3ac6f893b43eb33a726d2',
    trainer: 'Eddie',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'Beast',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://www.muscleandfitness.com/wp-content/uploads/2017/08/Eddie-Hall-Overhead-Extensions-1109.jpg?quality=86&strip=all',
    trainer: 'Eddie',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularBamBam = [
  
  ClassList(
    id: 1,
    className: 'Costas',
    classDifficult: 'DickHead',
    classDuration: '1 hora e meia',
    isFav: false,
    classImage: 'https://res.cloudinary.com/buzzfeed-brasil/image/upload/q_auto,f_auto/image-uploads/photo-set-collection-images/jpeg/62da6e0de71e7b1d8242fa0bd60fd2f4.jpg',
    trainer: 'BamBam',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Bíceps',
    classDifficult: 'DickHead',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://extra.globo.com/incoming/22725580-204-a60/w976h550-PROP/bambam.jpg',
    trainer: 'BamBam',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Peito',
    classDifficult: 'DickHead',
    classDuration: '4 horas',
    isFav: false,
    classImage: 'https://conteudo.imguol.com.br/c/entretenimento/69/2017/10/13/kleber-bambam-1507922084598_v2_615x300.jpg',
    trainer: 'BamBam',
    trainerImage: "",
  ),

];

List<ClassList> allClassesBamBam = [
  ClassList(
    id: 1,
    className: 'Trapézio descendente',
    classDifficult: 'DickHead',
    classDuration: '30 minutos',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/7xhMDyBh19s/maxresdefault.jpg',
    trainer: 'BamBam',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Squat',
    classDifficult: 'DickHead',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/BucRje4tHAY/maxresdefault.jpg',
    trainer: 'BamBam',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Tríceps',
    classDifficult: 'DickHead',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://i.ytimg.com/vi/B54V20tH2Lk/maxresdefault.jpg',
    trainer: 'BamBam',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularKobe = [
  
  ClassList(
    id: 1,
    className: 'Livre',
    classDifficult: 'Legend',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://pbs.twimg.com/media/EPy0qP0WkAMUzP4?format=png&name=small',
    trainer: 'Kobe',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Arremesso',
    classDifficult: 'Legend',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://images.hdqwalls.com/download/kobe-bryant-fan-art-m2-2560x1700.jpg',
    trainer: 'Kobe',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Racha na NBA',
    classDifficult: 'Legend',
    classDuration: '4 horas',
    isFav: false,
    classImage: 'https://images.wallpapersden.com/image/download/kobe-bryant-los-angeles-lakers-nba_Z2ZsZ26UmZqaraWkpJRoaW5nrWdpamk.jpg',
    trainer: 'Kobe',
    trainerImage: "",
  ),

];

List<ClassList> allClassesKobe = [
  ClassList(
    id: 1,
    className: 'Bandeja',
    classDifficult: 'Legend',
    classDuration: '1 hora',
    isFav: false,
    classImage: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9956aeaf-2c66-41ac-85e8-1423f66ad703/d9xet34-e5e352ca-b909-4476-b611-22a4178dda11.jpg/v1/fill/w_1131,h_707,q_70,strp/kobe_bryant_nba_wallpaper_4_0_by_skythlee_d9xet34-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAwMCIsInBhdGgiOiJcL2ZcLzk5NTZhZWFmLTJjNjYtNDFhYy04NWU4LTE0MjNmNjZhZDcwM1wvZDl4ZXQzNC1lNWUzNTJjYS1iOTA5LTQ0NzYtYjYxMS0yMmE0MTc4ZGRhMTEuanBnIiwid2lkdGgiOiI8PTE2MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.T_nE3ffeC-ArQ1n69Hu8aAKeBSUs96XVIsZg6JD3WNg',
    trainer: 'Kobe',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Dunk',
    classDifficult: 'Legend',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://i.ebayimg.com/images/g/J~oAAOSwTmpfc~-Q/s-l1600.jpg',
    trainer: 'Kobe',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Remada',
    classDifficult: 'Legend',
    classDuration: '1 horas',
    isFav: false,
    classImage: 'https://workoutinfoguru.com/wp-content/uploads/2013/04/kobe-bryant-workout2-1280x720.jpg',
    trainer: 'Kobe',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularTate = [
  
  ClassList(
    id: 1,
    className: 'Descanso',
    classDifficult: 'Rich',
    classDuration: '18 horas',
    isFav: false,
    classImage: 'https://everydaypower.com/wp-content/uploads/2022/08/andrew-tate-quotes-1000x600.jpg',
    trainer: 'Tate',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Smoke',
    classDifficult: 'Rich',
    classDuration: '1 horas',
    isFav: false,
    classImage: 'https://i2.wp.com/smartcdn.gprod.postmedia.digital/torontosun/wp-content/uploads/2023/01/tate2-e1672675357304.jpg?resize=780,470',
    trainer: 'Tate',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Boxing',
    classDifficult: 'Rich',
    classDuration: '4 horas',
    isFav: false,
    classImage: 'https://talksport.com/wp-content/uploads/sites/5/2022/08/Screenshot-2022-08-10-161159.jpg?strip=all&w=850&quality=40',
    trainer: 'Tate',
    trainerImage: "",
  ),

];

List<ClassList> allClassesTate = [
  ClassList(
    id: 1,
    className: 'Kill KSI',
    classDifficult: 'Rich',
    classDuration: '5 minutos',
    isFav: false,
    classImage: 'https://www.spieltimes.com/wp-content/uploads/2022/08/KSI-VS-Andrew-Tate.jpg',
    trainer: 'Tate',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Victory',
    classDifficult: 'Rich',
    classDuration: '10 horas',
    isFav: false,
    classImage: 'https://staticg.sportskeeda.com/editor/2023/01/4c3f2-16728450988948.png',
    trainer: 'Tate',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Chutes',
    classDifficult: 'Rich',
    classDuration: '2 horas',
    isFav: false,
    classImage: 'https://wegotthiscovered.com/wp-content/uploads/2022/12/kickboxing.jpg',
    trainer: 'Tate',
    trainerImage: "",
  ),

];
List<ClassList> mostPopularWolf = [
  
  ClassList(
    id: 1,
    className: 'Atenção',
    classDifficult: 'Sigma',
    classDuration: '24 horas',
    isFav: false,
    classImage: 'https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2013/12/20/Weekend/Images/wk-wolf1227-5.jpg?t=20170517',
    trainer: 'Wolf',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Drink',
    classDifficult: 'Sigma',
    classDuration: '3 horas',
    isFav: false,
    classImage: 'https://media.vanityfair.com/photos/54caa7beb624d6910575ccb2/master/w_2560%2Cc_limit/image.jpg',
    trainer: 'Wolf',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: "Coisa de rico",
    classDifficult: 'Sigma',
    classDuration: '4 horas',
    isFav: false,
    classImage: 'https://www.bosshunting.com.au/wp-content/uploads/2019/12/5505193-maxresdefault2222-1200x900.jpg',
    trainer: 'Wolf',
    trainerImage: "",
  ),

];

List<ClassList> allClassesWolf = [
  ClassList(
    id: 1,
    className: 'Aplausos',
    classDifficult: 'Sigma',
    classDuration: '24 horas',
    isFav: false,
    classImage: 'https://akamai.vgc.no/v2/images/fb73d232-1e0b-4dc0-bf70-1e020b1bd550?fit=crop&format=auto&h=556&w=988&s=86041e1e633942b29773de738a8c2af3f25ad3af',
    trainer: 'Wolf',
    trainerImage: "",
  ),

  ClassList(
    id: 2,
    className: 'Manipulação',
    classDifficult: 'Sigma',
    classDuration: '24 horas',
    isFav: false,
    classImage: 'https://images0.persgroep.net/rcs/HsxC0QbeJKKPOmX5SV8u43XmhNw/diocontent/58476299/_crop/0/0/900/592/_fitwidth/763?appId=93a17a8fd81db0de025c8abd1cca1279&quality=0.8',
    trainer: 'Wolf',
    trainerImage: "",
  ),

  ClassList(
    id: 3,
    className: 'Pensar',
    classDifficult: 'Sigma',
    classDuration: '24 horas',
    isFav: false,
    classImage: 'https://tribecafilm-production.s3.amazonaws.com/uploads/article/header_marquee/2096/large_WOWS_leodicapriofist.jpg',
    trainer: 'Wolf',
    trainerImage: "",
  ),

];