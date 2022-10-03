class Education {
  final String? title, description, year, college;
  Education({this.title, this.year, this.college, this.description});
}

List<Education> demo_education = [
  Education(
    year: "2020 - 2023",
    title: "LICENCE INFORMATIQUE",
    college: "Lille UNIVERSITY",
    description:
        "La licence Informatique de la faculté des sciences et Technologies de l’Université de Lille est de fournir une solide formation générale en informatique. La spécialisation en informatique se fait progressivement dans le parcours tout en conservant en permanence une place aux enseignements des compétences transversales. La formation se conclut par un stage en entreprise de 3 mois.",
  ),
  Education(
    year: "2019 - 2020",
    title: "DIPLOME UNIVERSITAIRE",
    college: "Caen UNIVERSITY",
    description:
        "Diplome Universitaire passerelle étudiants en exil (DUPEX). C'est une formation diplômante semestrielle qui s’appuie principalement sur le (DUEF) du Carré international visant à l’apprentissage ou au perfectionnement à la langue française Il comprend 273h sur le semestre.",
  ),
  Education(
    year: "2012 - 2015",
    title: "Technical Diploma in Computer Engineering",
    college: "AL NEELAIN UNIVERSITY",
    description:
        "I studied for 3 years in the faculties of engineering at Al-Neelain University, the computer engineering departments. I graduated on 10/13/2015 with an excellent grade (80.63%). In these 3 years I studied a lot of subjects such as Mathematics, Electronics, Computer Networking, Electrical Engineering, Computer Engineering, Computer Maintenance, C++, Object Oriented Programming, Database Management, Database Systems and Graduation Project: “Network Security Using access control lists“. The contents of the Three-Year Diploma are intended to provide reasonable-content courses of practical work in both workshops and laboratories. This will ensure that technicians leaving college upon completion of the courses have a theoretical understanding of their subject as well as significant practical experience and ability. The program will be a good pioneer in further studies.",
  ),
];
