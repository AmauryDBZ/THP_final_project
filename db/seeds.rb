Faker::Config.locale = 'fr'

User.destroy_all
User.reset_pk_sequence # Reset all user id in database
Category.destroy_all
Category.reset_pk_sequence
Donation.destroy_all
Donation.reset_pk_sequence
Project.destroy_all
Project.reset_pk_sequence
ProjectCategory.destroy_all
ProjectCategory.reset_pk_sequence
puts "Database reset done!"

name_array = ["d i g i t a l e s . g g ('good game')","UPSTR","Argo Athletic","Happy Minute","La bonne auberge","BeMyPartner","The Street4Fit Manager","Feedward","SpotiTube !","Alerte Ciné","Save time, ask me"]
pitch_array = ["Avec l’avènement des plateformes de streaming et des réseaux sociaux, la fiction est devenue le cœur battant d’une culture pour la première fois mondialisée. d i g i t a l e s . g g propose une plateforme de crowdfunding où les utilisateurs peuvent réunir des fonds et acheter à des artistes différents microservices pour donner vie aux histoires qu’ils ont créé ensemble.","UPSTR est une application destinée aux professionnels de l’image souhaitant booker rapidement et simplement un lieu de shoot, ainsi qu’un outil de gestion digitale pour les établissements. L’idée est de mettre en relation créateurs et service marketing des établissements par le biais d’une interface simple et efficace.","La préparation physique est un des éléments clés de la performance d'un sportif, et plus particulièrement pour ceux pratiquant la compétition. Mais à moins d'être professionnel, difficile d'avoir une préparation complète et aboutie. Je me suis donc dis que je pourrai créer une app qui proposerai aux sportifs une planification d'entrainement personnalisé et adapté à leurs objectifs.","Une application web pour gérer des cartes de restaurants, bars, ou autres cafés, permettant notamment de proposer une carte dynamique mise à jour en temps réel, avec une possibilité de publier des promotions en durée et/ou quantités limitées 'Happy Minute'.","L’objectif du projet est de créer une plateforme dynamique, principalement à l’attention des villages de petite taille. Ils pourront y mettre les activités et évènements qu’ils proposent, leur vie de village avec les avantages et les opportunités d’achat de logement et de création de commerce.","Les créateurs d’entreprise rencontrent de manière répétée le même obstacle : trouver le collaborateur qui leur convient. En effet, il est difficile de trouver à la fois une personne compétente, disposant des ressources recherchées et complémentaires à son projet, et en même temps qui dispose d’une passion et d’une implication similaire à la sienne.","Je gère l'association Street4Fit (www.street4fit.com). Nous mettons en relation des sportifs de haut niveau issus de zones éloignées de l'emploi et des entreprises ou des groupes de personnes sportives. Je souhaite créer une application pour aider les coachs à gérer les séances, les abonnements et les inscriptions des participants.","J’adore ma boite, cependant mon manager n’est pas très à l’écoute. J’ai essayé de lui faire comprendre subtilement, mais rien n’y fait. Je n’ose pas le confronter, et j’ai peur de lui. Je me suis donc dis que je pourrais créer une plateforme qui me permettra de transmettre mes feedbacks, de manière anonyme, ou non, à mon manager, ou aux RH.","Comme beaucoup de gens, nous utilisons beaucoup YouTube.Aussi, pourquoi ne pas créer une interface web qui soit propre à l'utilisateur et qui permette de 'ranger' ses vidéos (en fait, juste les liens vers YT) et y accéder facilement, quand il le souhaite ? C'est toute l'idée derrière le projet SPOTITUBE !","Le soucis avec le cinéma c'est que pour savoir si un film passe dans ma ville, la seule façon de savoir est d'aller tous les jours sur Allociné et vérifier s'il y a des séances dans les cinés proches de chez moi. Pas très pratique. Je me suis que je pouvais créer un site où je peux m'abonner à un ou plusieurs films, et je recevrai des alertes par email si le film passe dans une salle de ma ville.","Il s'agit d'un site internet dynamique qui permet de réserver des prestations de conciergerie de luxe mais à destination de la classe moyenne. L'interface te permet de t'inscrire rapidement et de choisir parmi les catégories suivantes."]
functionalities_array = ["Un visiteur arrive sur le site qui lui explique qu’il peut s’abonner pour participer à une expérience unique de création collaborative de fiction et.ou proposer ses services créatifs aux co-créateurs qui se servent de l’application. Une fois inscrit il arrive sur le node controller de l’application.","L'application est accessible sans inscription mais aucune réservation n'est possible. On verra une page qui montrera des suites dans des cartes, sans détails techniques, il faudra s'inscrire pour voir.","Un visiteur a la possibilité de s'inscrire grace au remplissage d'un formulaire d'inscription. il reçoit mail de confirmation de son inscription. Une fois inscrit, il est, directement, renvoyé sur une page ou il est invité à remplir son profile : - caractéristiques physiques (âges, taille, poids) - le sport pratiqué et le poste occupé Cependant, il a la possibilité, s'il le souhaite, de remplir son profil plus tard.","Le restaurateur s'inscrit sur l'app et peut alors publier sa carte, ainsi que les informations sur son établissement. Il peut dès lors régulièrement modifier le contenu de sa carte (plat du jour ou autre), et spécifier des horaires de Happy Hours sur certains produits de manière assez classique. Il peut modifier les prix quand il le souhaite, préciser les produits éventuellement indisponibles, il peut également indiquer les allergènes au autres catégorie de produits (alcool, végétarien, …) pour que son client puisse avoir automatiquement une carte adaptée.","Les mairies pourront s’inscrire et auront accès au site en mode admin avec la possibilité de publier des évènements, des offres, de gérer les utilisateurs et si possible d’accéder à d’autres fonctionnalités plus poussées","Une fois son inscription faite X va parler dans les grandes lignes de son projet (via un elevator pitch) et de ses attentes pour le profil qu’il recherche. Y est un cuisinier d’expérience , mais son poste actuel de chef cuisinier ne le fait pas rêver . il voudrait travailler des produits bios et de saison pour une cuisine fine et raffinée. En se baladant sur la toile il tombe sur notre site et décide de s’inscrire. Une fois qu’il est inscrit il va définir son profil ( expérience , attente , etc…) . Après cette étape il fera un recherche concernant son domaine: la restauration , et ajoutera le critère bio il tombe alors sur le profil de monsieur X , il lui notifie via un like qu’il est intéressé par son projet.","Nous allons créer une application pour la gestion des sessions dans les parc parisiens. Elle pourra être utilisé plus tard en la modifiant un peu dans les entreprises. Le participant s’inscrit/ se connecte sur son compte. Il a la possibilité de s'inscrire à l'abonnement (1 ou 2 cours par semaine), de payer, et consulter les sessions sur un calendrier. Le participant sera notifié des sessions et des rappels de renouvellement de son abonnement par mail (peut-être WhatsApp :) ), ainsi que sur son espace. Le dashboard utilisateur, permet une vue des séances et des photos issus d'Instagram.","L’employé s’inscrit/ se connecte sur son compte. Il a la possibilité de remplir un formulaire pour envoyer un feedback. Le destinataire en sera notifié par mail, ainsi que sur son espace. Le dashboard utilisateur, permet une vue d’ensemble des feedbacks reçus. Les administrateurs (RH ou managers dans les petites boîtes) ont accès à une vue d’ensemble des feedbacks utilisateurs. Ils peuvent ainsi voir de façon synthétique les feedbacks des employés, par département. Plusieurs feedbacks négatifs peuvent ainsi être détectés.","A chaque fois que le user va sur YT et qu'il souhaite sauvegarder une nouvelle vidéo, il se rend sur Spotitube ; il ouvre un formulaire où il saisit l'URL de la vidéo, et des paramètres pré-définis dans l'appli (genre (musique, humour, tuto), interprète(auteur)), etc. Quand il souhaite consulter des vidéos anciennes, il se rend directement sur Spotitube et exécute sa recherche de manière classique (type annuaire ou moteur de recherche). L'utilisateur peut également partager son Spotitube en invitant des amis, qui iront alors leur propre Id/Password et à qui il donnera ou non le droit d'ajouter des vidéos.","Un visiteur arrive sur le site qui lui explique qu'il peut s'abonner pour être au courant des séances des films de son choix. Il rentre le nom de son film dans une barre de recherche qui va lui sortir les résultats. Il s'inscrit au film (s'enregistre sur le site avant s'il n'est pas connecté).","Lorsque qu'un utilisateur/client s’enregistre, il est redirigé vers un Dashboard qui lui permet de sélectionner quelle mission il souhaite voir effectuer. Par la suite il notifié si la mission proposée est acceptée et par quel collaborateur. L’utilisateur peut aussi créer un événement pour cela il doit remplir un formulaire chaque mission a une catégorie. L'utilisateur peut voir ses missions actives dans son profil."]


10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Name.first_name + "@yopmail.com",
    password: "Azerty",
    personal_description: Faker::Lorem.sentence,
    professional_background: Faker::Job.title
  )
  user.update(email: user.first_name + "@yopmail.com")
  puts "Seeding User #{user.first_name} #{user.last_name}"
end

i = 0
11.times do
  project = Project.create(
    user_id: rand(1..10),
    name: name_array[i],
    pitch: pitch_array[i],
    functionalities: functionalities_array[i],
    value_of_project: rand(110..600),
    number_of_developers_on_project: rand(2..10),
    daily_time_spent_on_project_per_developer: rand(2..8),
    money_earned: rand(0..100),
    clicks: 0,
    validated: [true, false].sample
  )
  puts "Seeding Project #{project.id} #{project.name}"
  i+=1
end

3.times do
  cat = Category.create(
    name: Faker::Coffee.blend_name
  )
  puts "Seeding Category #{cat.name}"
end

10.times do
  pc = ProjectCategory.create(
    project_id: Project.all.sample.id,
    category_id: Category.all.sample.id
  )
  puts "Associating #{pc.project_id} with #{pc.category_id}"
end

15.times do
  donation = Donation.create(
    project_id: Project.all.sample.id,
    stripe_customer_id: Faker::Lorem.word,
    stripe_email: User.all.sample.email,
    amount: rand(5..200)
  )
  puts "Seeding Donation of #{donation.amount} € from #{donation.stripe_email}"
end
