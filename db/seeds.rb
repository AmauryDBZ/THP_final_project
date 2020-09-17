Faker::Config.locale = 'fr'

User.destroy_all
User.reset_pk_sequence # Reset all users' ids in database
Category.destroy_all
Category.reset_pk_sequence
Donation.destroy_all
Donation.reset_pk_sequence
Project.destroy_all
Project.reset_pk_sequence
ProjectCategory.destroy_all
ProjectCategory.reset_pk_sequence
BankDetail.destroy_all
AdminExplanation.destroy_all
AdminExplanation.reset_pk_sequence
BankDetail.reset_pk_sequence
puts "Database reset done!"

name_array = ["d i g i t a l e s . g g ('good game')","Argo Athletic","Happy Minute","La bonne auberge","BeMyPartner","The Street4Fit Manager","SpotiTube !","Alerte Ciné","Save time, ask me", "YunoHost", "Godot", "OnionShare", "PJON", "OpenLibrary", "Zeste de savoir", "Akaunting"]
pitch_array = ["Avec l’avènement des plateformes de streaming et des réseaux sociaux, la fiction est devenue le cœur battant d’une culture pour la première fois mondialisée. d i g i t a l e s . g g propose une plateforme de crowdfunding où les utilisateurs peuvent réunir des fonds et acheter à des artistes différents microservices pour donner vie aux histoires qu’ils ont créé ensemble.","La préparation physique est un des éléments clés de la performance d'un sportif, et plus particulièrement pour ceux pratiquant la compétition. Mais à moins d'être professionnel, difficile d'avoir une préparation complète et aboutie. Je me suis donc dis que je pourrai créer une app qui proposerai aux sportifs une planification d'entrainement personnalisé et adapté à leurs objectifs.","Une application web pour gérer des cartes de restaurants, bars, ou autres cafés, permettant notamment de proposer une carte dynamique mise à jour en temps réel, avec une possibilité de publier des promotions en durée et/ou quantités limitées 'Happy Minute'.","L’objectif du projet est de créer une plateforme dynamique, principalement à l’attention des villages de petite taille. Ils pourront y mettre les activités et évènements qu’ils proposent, leur vie de village avec les avantages et les opportunités d’achat de logement et de création de commerce.","Les créateurs d’entreprise rencontrent de manière répétée le même obstacle : trouver le collaborateur qui leur convient. En effet, il est difficile de trouver à la fois une personne compétente, disposant des ressources recherchées et complémentaires à son projet, et en même temps qui dispose d’une passion et d’une implication similaire à la sienne.","Je gère l'association Street4Fit (www.street4fit.com). Nous mettons en relation des sportifs de haut niveau issus de zones éloignées de l'emploi et des entreprises ou des groupes de personnes sportives. Je souhaite créer une application pour aider les coachs à gérer les séances, les abonnements et les inscriptions des participants.","Comme beaucoup de gens, nous utilisons beaucoup YouTube.Aussi, pourquoi ne pas créer une interface web qui soit propre à l'utilisateur et qui permette de 'ranger' ses vidéos (en fait, juste les liens vers YT) et y accéder facilement, quand il le souhaite ? C'est toute l'idée derrière le projet SPOTITUBE !","Le soucis avec le cinéma c'est que pour savoir si un film passe dans ma ville, la seule façon de savoir est d'aller tous les jours sur Allociné et vérifier s'il y a des séances dans les cinés proches de chez moi. Pas très pratique. Je me suis que je pouvais créer un site où je peux m'abonner à un ou plusieurs films, et je recevrai des alertes par email si le film passe dans une salle de ma ville.","Il s'agit d'un site internet dynamique qui permet de réserver des prestations de conciergerie de luxe mais à destination de la classe moyenne. L'interface te permet de t'inscrire rapidement et de choisir parmi les catégories suivantes.", "YunoHost est un système d'exploitation visant à simplifier l'administration d'un serveur, et donc à démocratiser l'auto-hébergement, tout en veillant à ce qu'il reste fiable, sécurisé, éthique et léger. C'est un projet de logiciel libre sous copyleft, maintenu exclusivement par des bénévoles.", "Godot Engine est un moteur de jeu multiplateforme qui permet de créer des jeux en 2D et 3D à partir d'une interface unifiée. Il fournit un ensemble complet d'outils communs, afin que les utilisateurs puissent se concentrer sur la création de jeux sans avoir à réinventer la roue.", "Partagez des fichiers de toute taille de manière sécurisée et anonyme. Un serveur web est lancé, rendant OnionShare accessible comme un service Tor Onion, potentiellement temporairement ou de manière furtive, sur Internet.", "Avec PJON, vous construisez gratuitement des réseaux d'appareils sans avoir besoin d'un service en cloud ou d'une plate-forme centralisée que vous ne contrôlez pas entièrement.", "Open Library est un catalogue de bibliothèque ouvert et modifiable, se développant vers une page web pour chaque livre jamais publié.", "Zeste de Savoir est un site internet communautaire dédié au partage de la connaissance pour tous. Il est propulsé par le framework Django 2.2 et Python 3.", "Akaunting est un logiciel de comptabilité en ligne, gratuit et à code source ouvert, conçu pour les petites entreprises et les indépendants. Il est construit avec des technologies modernes telles que Laravel, VueJS, Bootstrap 4, RESTful API etc. Grâce à sa structure modulaire, Akaunting fournit un App Store impressionnant pour les utilisateurs et les développeurs." ]
functionalities_array = ["Un visiteur arrive sur le site qui lui explique qu’il peut s’abonner pour participer à une expérience unique de création collaborative de fiction et.ou proposer ses services créatifs aux co-créateurs qui se servent de l’application. Une fois inscrit il arrive sur le node controller de l’application.","Un visiteur a la possibilité de s'inscrire grace au remplissage d'un formulaire d'inscription. il reçoit mail de confirmation de son inscription. Une fois inscrit, il est, directement, renvoyé sur une page ou il est invité à remplir son profile : - caractéristiques physiques (âges, taille, poids) - le sport pratiqué et le poste occupé Cependant, il a la possibilité, s'il le souhaite, de remplir son profil plus tard.","Le restaurateur s'inscrit sur l'app et peut alors publier sa carte, ainsi que les informations sur son établissement. Il peut dès lors régulièrement modifier le contenu de sa carte (plat du jour ou autre), et spécifier des horaires de Happy Hours sur certains produits de manière assez classique. Il peut modifier les prix quand il le souhaite, préciser les produits éventuellement indisponibles, il peut également indiquer les allergènes au autres catégorie de produits (alcool, végétarien, …) pour que son client puisse avoir automatiquement une carte adaptée.","Les mairies pourront s’inscrire et auront accès au site en mode admin avec la possibilité de publier des évènements, des offres, de gérer les utilisateurs et si possible d’accéder à d’autres fonctionnalités plus poussées","Une fois son inscription faite X va parler dans les grandes lignes de son projet (via un elevator pitch) et de ses attentes pour le profil qu’il recherche. Y est un cuisinier d’expérience , mais son poste actuel de chef cuisinier ne le fait pas rêver . il voudrait travailler des produits bios et de saison pour une cuisine fine et raffinée. En se baladant sur la toile il tombe sur notre site et décide de s’inscrire. Une fois qu’il est inscrit il va définir son profil ( expérience , attente , etc…) . Après cette étape il fera un recherche concernant son domaine: la restauration , et ajoutera le critère bio il tombe alors sur le profil de monsieur X , il lui notifie via un like qu’il est intéressé par son projet.","Nous allons créer une application pour la gestion des sessions dans les parc parisiens. Elle pourra être utilisé plus tard en la modifiant un peu dans les entreprises. Le participant s’inscrit/ se connecte sur son compte. Il a la possibilité de s'inscrire à l'abonnement (1 ou 2 cours par semaine), de payer, et consulter les sessions sur un calendrier. Le participant sera notifié des sessions et des rappels de renouvellement de son abonnement par mail (peut-être WhatsApp :) ), ainsi que sur son espace. Le dashboard utilisateur, permet une vue des séances et des photos issus d'Instagram.","L’employé s’inscrit/ se connecte sur son compte. Il a la possibilité de remplir un formulaire pour envoyer un feedback. Le destinataire en sera notifié par mail, ainsi que sur son espace. Le dashboard utilisateur, permet une vue d’ensemble des feedbacks reçus. Les administrateurs (RH ou managers dans les petites boîtes) ont accès à une vue d’ensemble des feedbacks utilisateurs. Ils peuvent ainsi voir de façon synthétique les feedbacks des employés, par département. Plusieurs feedbacks négatifs peuvent ainsi être détectés.","A chaque fois que le user va sur YT et qu'il souhaite sauvegarder une nouvelle vidéo, il se rend sur Spotitube ; il ouvre un formulaire où il saisit l'URL de la vidéo, et des paramètres pré-définis dans l'appli (genre (musique, humour, tuto), interprète(auteur)), etc. Quand il souhaite consulter des vidéos anciennes, il se rend directement sur Spotitube et exécute sa recherche de manière classique (type annuaire ou moteur de recherche). L'utilisateur peut également partager son Spotitube en invitant des amis, qui iront alors leur propre Id/Password et à qui il donnera ou non le droit d'ajouter des vidéos.","Un visiteur arrive sur le site qui lui explique qu'il peut s'abonner pour être au courant des séances des films de son choix. Il rentre le nom de son film dans une barre de recherche qui va lui sortir les résultats. Il s'inscrit au film (s'enregistre sur le site avant s'il n'est pas connecté).","Lorsque qu'un utilisateur/client s’enregistre, il est redirigé vers un Dashboard qui lui permet de sélectionner quelle mission il souhaite voir effectuer. Par la suite il notifié si la mission proposée est acceptée et par quel collaborateur. L’utilisateur peut aussi créer un événement pour cela il doit remplir un formulaire chaque mission a une catégorie. L'utilisateur peut voir ses missions actives dans son profil.", "Basé sur Debian; Administrez votre serveur via une interface web conviviale; Déployez des applications en quelques clics ; Gérer les utilisateurs (basé sur LDAP) ; Gérer les noms de domaine ; Créer et restaurer des sauvegardes ; Connectez-vous à toutes les applications simultanément via le portail utilisateur (NGINX, SSOwat) ; Inclut une pile de courriels complète (Postfix, Dovecot, Rspamd, DKIM) ; ... ainsi qu'un serveur de messagerie instantanée (XMPP) ; Gère les certificats SSL (basés sur Let's Encrypt) ; ... et des systèmes de sécurité (Fail2ban, yunohost-firewall).", "Godot est totalement libre et open source sous la licence très permissive du MIT. Aucune condition n'est attachée, pas de royalties, rien. Les jeux des utilisateurs sont les leurs, jusqu'à la dernière ligne de code du moteur.  Ils peuvent être exportés en un clic vers un certain nombre de plateformes, y compris les principales plateformes de bureau (Linux, macOS, Windows), les plateformes mobiles (Android, iOS), ainsi que les plateformes Web (HTML5) et les consoles. Le développement de Godot est entièrement indépendant et communautaire, ce qui permet aux utilisateurs de contribuer à la conception de leur moteur en fonction de leurs attentes. Il est soutenu par l'association à but non lucratif Software Freedom Conservancy.", "Une adresse inutilisable est générée et est partagée pour que le destinataire puisse l'ouvrir dans le navigateur Tor pour télécharger les fichiers. Aucun serveur séparé ou service de partage de fichiers tiers n'est nécessaire. Vous hébergez les fichiers sur votre propre ordinateur. Ouvrez OnionShare, faites glisser et déposez des fichiers et des dossiers dans le logiciel, puis cliquez sur 'Démarrer le partage'. Une URL secrète .onion telle que http://asxmi4q6i7pajg2b.onion/egg-cain vous sera présentée pour que vous puissiez la partager. Envoyez cette URL au destinataire des fichiers. Un e-mail, ou un message privé sur Facebook ou Twitter est suffisant si le contenu n'est pas secret. Les fichiers ne sont pas plus sûrs que le moyen d'envoyer l'adresse. Le destinataire n'a pas besoin d'OnionShare. Il suffit d'ouvrir l'adresse dans le navigateur Tor pour télécharger le fichier.", "PJON® (Padded Jittering Operative Network) est un protocole de réseau multimédia multi-maîtres, compatible arduino. Il propose un nouveau standard ouvert, il est conçu comme un cadre et met en œuvre une pile de protocoles réseau entièrement définie par logiciel qui peut être facilement compilée sur de nombreux MCU et architectures comme ATtiny, ATmega, SAMD, ESP8266, ESP32, STM32, Teensy, Raspberry Pi, Linux, Windows x86, Apple et Android. PJON fonctionne sur un large éventail de supports et de protocoles comme PJDL, PJDLR, PJDLS, Serial, RS485, USB, ASK/FSK, LoRa, UDP, TCP, MQTT et ESPNOW.", "Open Library est un projet en ligne destiné à créer ‘une page web pour chaque livre jamais publié’. Créé par Aaron Swartz, Brewster Kahle, Alexis Rossi, Anand Chitipothu et Rebecca Malamud, Open Library est un projet de l'Internet Archive, une organisation à but non lucratif. Il a été financé en partie par des subventions de la Bibliothèque d'État de Californie et de la Fondation Kahle/Austin. Open Library fournit des copies numériques en ligne dans de multiples formats, créées à partir d'images de nombreux livres du domaine public, épuisés ou en cours d'impression.", "Notre projet technique est constitué de plusieurs éléments : zds-site, le cœur du projet technique ; zmarkdown, notre moteur Markdown amélioré pour les besoins du site ; ansible-zestedesavoir, notre outil pour déployer Zeste de Savoir sur un serveur de production ; latex-template, notre gabarit LaTeX pour générer des fichiers PDF ; extensions-notificateurs, nos extensions de navigateur pour recevoir des notifications.", "Complètement libre. Pas de frais d'installation. Sans conditions. Pas de frais cachés. Pas une version limitée gratuite. Pas de compteur de x factures, clients, transactions, etc. Pas d'essai gratuit. Gratuit signifie gratuit.  Akaunting vous permet de consulter vos finances en ligne à tout moment et en tout lieu. Tant que vous disposez d'une connexion internet, vous pouvez accéder instantanément à vos finances depuis n'importe quel appareil : ordinateur, tablette ou téléphone. Akaunting est un projet Open Source avec des contributeurs du monde entier. Nous bouleversons le marché dominé par les logiciels à source fermée et introduisons la puissance des logiciels à source ouverte dans le monde de la comptabilité. Akaunting est hébergé sur GitHub et ouvert à tous les contributeurs.  Akaunting est construit avec des technologies modernes telles que Laravel, VueJS, Bootstrap 4, RESTful API etc. Laravel est le meilleur framework PHP existant avec des milliers de contributeurs et des outils modernes tels que des ORM étonnants, un routage sans douleur, une puissante bibliothèque de files d'attente, etc." ]
bank_name_array = ['Banque de France‎','BNP Paribas‎','Crédit Agricole‎','Banque Populaire',"Caisse d'Epargne",'Crédit Lyonnais (LCL)','HSBC','Crédit Mutuel','La Banque Postale','Dexia Banque', 'Crédit Coopératif']
categories_array = ['Finance','Education','Mobilité','Santé','Cybersécurité','Sport','Data science','Justice','Social','Gaming','Environnement','Media', "Programmation", "Fiction"]
image_categories_array = ['https://pictures.kitties.netlib.re/storage/r_finance.jpeg', 'https://pictures.kitties.netlib.re/storage/r_education.jpeg', 'https://pictures.kitties.netlib.re/storage/r_mobility.jpeg', 'https://pictures.kitties.netlib.re/storage/r_health.jpeg', 'https://pictures.kitties.netlib.re/storage/r_cybersecurity.jpeg', 'https://pictures.kitties.netlib.re/storage/r_sport.jpeg', 'https://pictures.kitties.netlib.re/storage/r_data_science.jpeg', 'https://pictures.kitties.netlib.re/storage/r_justice.jpeg', 'https://pictures.kitties.netlib.re/storage/r_social.jpeg', 'https://pictures.kitties.netlib.re/storage/r_gaming.jpeg', 'https://pictures.kitties.netlib.re/storage/r_environment.jpeg', 'https://pictures.kitties.netlib.re/storage/r_media.jpeg', 'https://pictures.kitties.netlib.re/storage/photo-1580894912989.jpeg', 'https://pictures.kitties.netlib.re/storage/photo-1455390582262-044cdead277a.jpeg']
user_first_names = ["Marion 'j", "Kevin", "Mathieu", "Clement", "Nizar", "Karim", "Orane", "Fefe", "Monica", "Alexandre", "Remi", "Micah", "Giovanni", "Mek", "Alexandre", "Denis" ]
user_last_names = ["Pocquet", "PHIMPHACHANH", "Joly", "Pain", "M'Rad", "Fathi", "Chaper", "Gaude", "Richaume", "Aubin", "Verschelde", "Lee", "Blu Mitolo", "", "Demode", "Duliçi"  ]
websites_urls_array = ["https://digitales-production.herokuapp.com/", "https://thp-argo-prod.herokuapp.com/", "www.happy-minute.com", "https://labonneauberge.herokuapp.com/", "bemypartner", "tsfm", "spotitube", "https://www.arte.tv/fr/videos/cinema/", "https://staskme.herokuapp.com/", "https://yunohost.org", "https://godotengine.org/", "https://onionshare.org/", "https://www.pjon.org/", "https://openlibrary.org/", "https://zestedesavoir.com/", "https://akaunting.com/"  ]
i=0



user_first_names.size.times do 
  user = User.create(
    first_name: user_first_names[i],
    last_name: user_last_names[i],
    email: user_first_names[i].downcase + "@yopmail.com",
    password: "Azerty",
    personal_description: Faker::Lorem.sentence,
    professional_background: Faker::Job.title
  )
  puts "Seeding User #{user.first_name} #{user.last_name}"
  bank_detail = BankDetail.create(
    user_id: user.id,
    bank_name: bank_name_array.sample,
    iban: "FR#{rand(0000000000000000000000000..9999999999999999999999999)}", 
    branch_code: rand(00000..99999).to_s,
    bank_code: rand(00000..99999),
    account_number: rand(00000000000..99999999999).to_s,
    key: rand(00..99).to_s
  )
  puts "Seeding bank details #{bank_detail.id} of User #{user.id}"
  i+=1
end

# Let's create an admin account
admin = User.create(
  first_name: 'Moussaillon',
  last_name: 'Administrator',
  email: 'moussaillon@yopmail.com',
  password: 'Azerty',
  personal_description: Faker::Lorem.sentence,
  professional_background: Faker::Job.title,
  is_admin: true
)
puts "Seeding admin : #{admin.email}."

i = 0
name_array.size.times do
  project = Project.create(
    user_id: i,
    name: name_array[i],
    pitch: pitch_array[i],
    functionalities: functionalities_array[i],
    value_of_project: rand(80..1600),
    number_of_developers_on_project: rand(2..10),
    daily_time_spent_on_project_per_developer: rand(2..8),
    money_earned: rand(0..100),
    clicks: 0,
    validated: [true, nil].sample
  )
  puts "Seeding Project #{project.id} #{project.name}"
  i+=1
end

x = 0
categories_array.size.times do
  category = Category.create(
    name: categories_array[x],
    url: image_categories_array[x]
  )
  puts "Seeding Category #{category.name}"
  x += 1
end

y = 1
10.times do
  pc = ProjectCategory.create(
    project_id: y,
    category_id: Category.all.sample.id
  )
  y += 1
  puts "Associating #{Project.find(pc.project_id).name} with #{Category.find(pc.category_id).name}"

end

15.times do
  donation = Donation.create(
    project_id: Project.all.sample.id,
    stripe_customer_id: Faker::Lorem.word,
    stripe_email: User.all.sample.email,
    transfered: true,
    amount: rand(5..200)
  )
  puts "Seeding Donation of #{donation.amount} € from #{donation.stripe_email}"
end
Donation.find(15).update(transfered: nil)
