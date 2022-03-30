DROP DATABASE IF EXISTS `tools2code`;
CREATE DATABASE `tools2code` CHARACTER SET utf8;

USE `tools2code`;

CREATE TABLE `Resource` (
  `id` SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `link` VARCHAR(100) NOT NULL UNIQUE,
  `technology` VARCHAR(10) NOT NULL,
  `category` VARCHAR(30) NOT NULL,
  `description` VARCHAR(255) NOT NULL UNIQUE
) ENGINE = INNODB DEFAULT CHARSET = utf8;

INSERT INTO `Resource` (
    `id`,
    `name`,
    `link`,
    `technology`,
    `category`,
    `description`
  )
VALUES (
    1,
    'Markdown to HTML',
    'markdowntohtml.com',
    'HTML',
    'Convertisseur',
    'Collez ou tapez votre markdown & voyez-le rendu au format HTML. Téléchargez ou copiez le code HTML résultant.'
  ),
  (
    2,
    'Doc HTML',
    'developer.mozilla.org/fr/docs/Web/HTML/Element',
    'HTML',
    'Documentation',
    'Cette page énumère tous les éléments HTML, regroupés ici selon leurs fonctions.'
  ),
  (
    3,
    'XML Sitemaps',
    'www.xml-sitemaps.com',
    'HTML',
    'Générateur de Sitemap',
    'Gratuit & simple. Convient lorsque vous avez besoin de créer rapidement un plan du site pour un petit site Web (jusqu’à 500) pages.'
  ),
  (
    4,
    'Haml',
    'haml.info',
    'HTML',
    'Moteur de Template',
    'Haml (HTML abstraction markup language) is based on one primary principle: markup should be beautiful. It’s not just beauty for beauty’s sake either; Haml accelerates and simplifies template creation down to veritable haiku.'
  ),
  (
    5,
    'Pug',
    'pugjs.org/api/getting-started.html',
    'HTML',
    'Moteur de Template',
    'Pug est un moteur de template haute performance fortement influencé par Haml & implémenté avec JS pour Nodejs.'
  ),
  (
    6,
    'Slim',
    'slim-lang.com',
    'HTML',
    'Moteur de Template',
    'Slim is a Ruby template language whose goal is reduce html syntax to the essential parts without becoming cryptic.'
  ),
  (
    7,
    'Twig',
    'twig.symfony.com',
    'HTML',
    'Moteur de Template',
    'Twig est un langage de template pour PHP, mais surtout celui de Symfony.'
  ),
  (
    8,
    'MarkDown',
    'www.markdownguide.org',
    'HTML',
    'Preprocesseur',
    'Le guide Markdown est un guide de référence gratuit & open source qui explique comment utiliser Markdown.'
  ),
  (
    9,
    'HTML',
    'html.spec.whatwg.org/multipage',
    'HTML',
    'Spécifications',
    'HTML est le langage de balisage principal du World Wide Web.'
  ),
  (
    10,
    'Validateur HTML',
    'validator.w3.org',
    'HTML',
    'Validateur',
    'Ce validateur vérifie la validité du balisage des documents Web en HTML, XHTML, SMIL, MathML, etc.'
  ),
  (
    11,
    'Images Adaptatives',
    'developer.mozilla.org/fr/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images',
    'HTML',
    'Techniques',
    'Dans cet article, nous allons préciser le concept d’images adaptatives — images qui s’adaptent aux appareils selon les différentes tailles d’écran, résolutions et autres caractéristiques de ce type.'
  ),
  (
    12,
    'Références CSS',
    'developer.mozilla.org/fr/docs/Web/CSS/Reference',
    'CSS',
    'Documentation',
    'Utilisez cette référence CSS pour parcourir un index alphabétique de tous les éléments CSS standard.'
  ),
  (
    13,
    'Sélecteurs CSS',
    'developer.mozilla.org/fr/docs/Web/CSS/CSS_Selectors',
    'CSS',
    'Documentation',
    'Les sélecteurs définissent les éléments sur lesquelles s’applique un ensemble de règles CSS.'
  ),
  (
    14,
    'Animadio',
    'animadio.org',
    'CSS',
    'Framework',
    'Animadio, un Framework CSS configurable avec des variables CSS & capable de gérer des animations.'
  ),
  (
    15,
    'Bootstrap',
    'getbootstrap.com',
    'CSS',
    'Framework',
    'Concevez & personnalisez rapidement des sites mobiles réactifs avec Bootstrap.'
  ),
  (
    16,
    'Bulma',
    'bulma.io',
    'CSS',
    'Framework',
    'Bulma est un framework CSS open source gratuit basé sur Flexbox & construit avec Sass.'
  ),
  (
    17,
    'Foundation',
    'get.foundation',
    'CSS',
    'Framework',
    'The most advanced responsive front-end framework in the world.'
  ),
  (
    18,
    'Materialize',
    'materializecss.com',
    'CSS',
    'Framework',
    'Materialise est un framework CSS réactif moderne basé sur le Material Design de Google.'
  ),
  (
    19,
    'Pure.css',
    'purecss.io',
    'CSS',
    'Framework',
    'Pure est une bibliothèque CSS ridiculement petite que vous pouvez utiliser pour démarrer n’importe quel projet Web.'
  ),
  (
    20,
    'TailwindCSS',
    'tailwindcss.com',
    'CSS',
    'Framework',
    'Rapidly build modern websites without ever leaving your HTML.'
  ),
  (
    21,
    'Flexbox Froggy',
    'flexboxfroggy.com',
    'CSS',
    'Jeu',
    'Bienvenue dans Flexbox Froggy, un jeu dans lequel vous aidez Froggy & ses amis en écrivant du code CSS !'
  ),
  (
    22,
    'Grid Garden',
    'cssgridgarden.com',
    'CSS',
    'Jeu',
    'Bienvenue dans Grid Garden, où vous écrivez du code CSS pour faire pousser votre jardin de carottes !'
  ),
  (
    23,
    'Font Awesome',
    'fontawesome.com',
    'CSS',
    'Librairie d’Icônes',
    'Obtenez des icônes vectorielles & des logos sociaux sur votre site Web avec Font Awesome, le jeu d’icônes & la boîte à outils les plus populaires du Web.'
  ),
  (
    24,
    'Less',
    'lesscss.org',
    'CSS',
    'Preprocesseur',
    'It’s CSS, with just a little more.'
  ),
  (
    25,
    'Sass',
    'sass-lang.com',
    'CSS',
    'Preprocesseur',
    'Sass est une extension de CSS, ajoutant des règles imbriquées, des variables, des mixins, l’héritage des sélecteurs, etc.'
  ),
  (
    26,
    'Stylus',
    'stylus-lang.com',
    'CSS',
    'Preprocesseur',
    'Stylus est un nouveau langage révolutionnaire, offrant un moyen efficace, dynamique & expressif de générer du CSS.'
  ),
  (
    27,
    'CSS',
    'www.w3.org/Style/CSS',
    'CSS',
    'Spécifications',
    'Les feuilles de style en cascade sont un mécanisme simple pour ajouter du style aux documents Web.'
  ),
  (
    28,
    'Flexbox Guide',
    'css-tricks.com/snippets/css/a-guide-to-flexbox',
    'CSS',
    'Techniques',
    'Notre guide complet de la mise en page CSS flexbox.'
  ),
  (
    29,
    'Grid Guide',
    'css-tricks.com/snippets/css/complete-guide-grid',
    'CSS',
    'Techniques',
    'Notre guide complet de la grille CSS, se concentrant sur tous les paramètres à la fois pour le conteneur parent de la grille et les éléments enfants de la grille.'
  ),
  (
    30,
    'Mobile First',
    'css-tricks.com/how-to-develop-and-test-a-mobile-first-design-in-2021',
    'CSS',
    'Techniques',
    'Comment développer et tester une conception mobile en 2021'
  ),
  (
    31,
    'Bootswatch',
    'bootswatch.com',
    'CSS',
    'Thèmes de Framework',
    'Thèmes gratuits pour Bootstrap. Basé sur Bootstrap. Icônes de Font Awesome. Polices Web de Google.'
  ),
  (
    32,
    'CSS Tricks',
    'css-tricks.com',
    'CSS',
    'Tutoriels',
    'Articles quotidiens sur CSS, HTML, JavaScript & tout ce qui concerne la conception & le développement Web.'
  ),
  (
    33,
    'Font Squirrel',
    'www.fontsquirrel.com',
    'CSS',
    'Typographie',
    'Font Squirrel parcourt Internet à la recherche de polices de haute qualité légitimement gratuites. Téléchargez des milliers de polices entièrement légales, de haute qualité & gratuites.'
  ),
  (
    34,
    'Google Fonts',
    'fonts.google.com',
    'CSS',
    'Typographie',
    'Rendre le Web plus beau, plus rapide & plus ouvert grâce à une excellente typographie'
  ),
  (
    35,
    'Online Web Fonts',
    'www.onlinewebfonts.com',
    'CSS',
    'Typographie',
    'Online Web Fonts est un site Web de téléchargement de polices en ligne. Il propose plus de 8 240 170 polices de bureau & Web que vous pouvez prévisualiser & télécharger.'
  ),
  (
    36,
    'Validateur CSS',
    'jigsaw.w3.org/css-validator',
    'CSS',
    'Validateur',
    'Vérifiez vos feuilles de style CSS & vos documents HTML stylés avec CSS'
  ),
  (
    37,
    'Mode Strict',
    'developer.mozilla.org/fr/docs/Web/JavaScript/Reference/Strict_mode',
    'JS',
    'Bonnes Pratiques',
    'Le mode strict de ECMAScript 5 permet de choisir une variante restrictive de JavaScript.'
  ),
  (
    38,
    'Doc JS',
    'developer.mozilla.org/fr/docs/Web/JavaScript',
    'JS',
    'Documentation',
    'JavaScript est un langage de programmation interprété avec des fonctions de première classe.'
  ),
  (
    39,
    'CDNJS',
    'cdnjs.com',
    'JS',
    'CDN',
    'CDNJS est un service CDN gratuit & open-source approuvé par plus de 10% des sites Web, alimenté par Cloudflare.'
  ),
  (
    40,
    'JSDelivr',
    'www.jsdelivr.com',
    'JS',
    'CDN',
    'Le plus grand réseau & les meilleures performances parmi tous les CDNs.'
  ),
  (
    41,
    'Unpkg',
    'unpkg.com',
    'JS',
    'CDN',
    'UNPKG est un réseau de diffusion de contenu rapide & mondial pour tout sur npm.'
  ),
  (
    42,
    'Express',
    'expressjs.com',
    'JS',
    'Framework Backend',
    'Framework Web rapide & minimaliste pour Node.js'
  ),
  (
    43,
    'Electron',
    'www.electronjs.org',
    'JS',
    'Framework Desktop',
    'Créez des applications de bureau multiplateformes avec JS, HTML & CSS.'
  ),
  (
    44,
    'Angular',
    'angular.io',
    'JS',
    'Framework Frontend',
    'Angular est une plate-forme pour créer des applications Web mobiles & de bureau.'
  ),
  (
    45,
    'Ember',
    'emberjs.com',
    'JS',
    'Framework Frontend',
    'Ember.js is a productive, battle-tested JavaScript framework for building modern web applications. It includes everything you need to build rich UIs that work on any device.'
  ),
  (
    46,
    'React',
    'reactjs.org',
    'JS',
    'Framework Frontend',
    'Une bibliothèque JavaScript pour créer des interfaces utilisateur.'
  ),
  (
    47,
    'Vue.js',
    'vuejs.org',
    'JS',
    'Framework Frontend',
    'Vue.js - Le framework JavaScript progressif.'
  ),
  (
    48,
    'Cordova',
    'cordova.apache.org',
    'JS',
    'Framework Mobile',
    'Applications mobiles avec HTML, CSS & JS. Ciblez plusieurs plates-formes avec une base de code.'
  ),
  (
    49,
    'Ionic',
    'ionicframework.com',
    'JS',
    'Framework Mobile',
    'Ionic est la plateforme de développement d’applications mobile pour les développeurs Web.'
  ),
  (
    50,
    'React Native',
    'reactnative.dev',
    'JS',
    'Framework Mobile',
    'Créez des applications natives pour Android & iOS à l’aide de React.'
  ),
  (
    51,
    'Vue Native',
    'vue-native.io',
    'JS',
    'Framework Mobile',
    'Vue Native est un framework pour créer des applications mobiles natives multiplateformes à l’aide de JavaScript.'
  ),
  (
    52,
    'Weex',
    'weex.apache.org',
    'JS',
    'Framework Mobile',
    'Weex est un cadre permettant de créer des applications mobiles performantes avec une technologie Web moderne.'
  ),
  (
    53,
    'NPM',
    'www.npmjs.com',
    'JS',
    'Package Manager',
    'Node Package Manager : gestion des dépendances rapide, fiable & sécurisée pour JavaScript.'
  ),
  (
    54,
    'Yarn',
    'classic.yarnpkg.com/fr',
    'JS',
    'Package Manager',
    'Yarn est un gestionnaire de packages qui se double de chef de projet. Que vous travailliez sur des projets ponctuels ou de grands monorepos, en tant qu’amateur ou utilisateur d’entreprise, nous sommes là pour vous.'
  ),
  (
    55,
    'Babel',
    'babeljs.io',
    'JS',
    'Preprocesseur',
    'Babel is a JavaScript compiler. Use next generation JavaScript, today.'
  ),
  (
    56,
    'CoffeeScript',
    'coffeescript.org',
    'JS',
    'Preprocesseur',
    'CoffeeScript est un petit langage qui se compile en JavaScript.'
  ),
  (
    57,
    'LiveScript',
    'livescript.net',
    'JS',
    'Preprocesseur',
    'LiveScript is a language which compiles to JavaScript. It has a straightforward mapping to JavaScript and allows you to write expressive code devoid of repetitive boilerplate.'
  ),
  (
    58,
    'TypeScript',
    'www.typescriptlang.org',
    'JS',
    'Preprocesseur',
    'TypeScript étend JavaScript en ajoutant des types au langage.'
  ),
  (
    59,
    'Node.js',
    'nodejs.org/fr',
    'JS',
    'Runtime',
    'Node.js est un runtime JavaScript basé sur le moteur Chrome V8.'
  ),
  (
    60,
    'We Learn JS',
    'learnjs.slack.com',
    'JS',
    'Slack',
    'La communauté JavaScript sur Slack !'
  ),
  (
    61,
    'ECMAScript',
    'www.ecma-international.org/default.htm',
    'JS',
    'Spécifications',
    'Ecma International est une association industrielle fondée en 1961, dédiée à la standardisation des systèmes d’information & de communication.'
  ),
  (
    62,
    'Grunt',
    'gruntjs.com',
    'JS',
    'Task Runner',
    'Grunt : le Task Runner de JavaScript. L’écosystème Grunt est énorme & se développe chaque jour.'
  ),
  (
    63,
    'Gulp',
    'gulpjs.com',
    'JS',
    'Task Runner',
    'Une boîte à outils pour automatiser & améliorer votre flux de travail.'
  ),
  (
    64,
    'API JS',
    'developer.mozilla.org/fr/docs/Web/API',
    'JS',
    'Techniques',
    'Quand vous codez en JavaScript pour le web, il y a un grand nombre d’API disponibles.'
  ),
  (
    65,
    'POO JS',
    'developer.mozilla.org/fr/docs/Learn/JavaScript/Objects',
    'JS',
    'Techniques',
    'En JavaScript, la plupart des choses sont des objets, des éléments du cœur de JavaScript, comme les chaînes de caractères et les tableaux, aux interfaces de programmation (APIs) des navigateurs construites sur la base de JavaScript.'
  ),
  (
    66,
    'Le Tutoriel JavaScript Moderne',
    'fr.javascript.info',
    'JS',
    'Tutoriels',
    'Comment c’est fait maintenant. Des bases aux sujets avancés avec des explications simples mais détaillées.'
  ),
  (
    67,
    'Drupal',
    'www.drupal.org',
    'PHP',
    'CMS',
    'Drupal est une plate-forme open source pour créer des expériences numériques incroyables.'
  ),
  (
    68,
    'Joomla',
    'www.joomla.org',
    'PHP',
    'CMS',
    'Joomla! est un système de gestion de contenu (CMS) primé, qui vous permet de créer des sites Web et de puissantes applications en ligne.'
  ),
  (
    69,
    'Magento',
    'magento.com',
    'PHP',
    'CMS',
    'Créez des expériences d’achat engageantes avec Magento Commerce.'
  ),
  (
    70,
    'PrestaShop',
    'www.prestashop.com/fr',
    'PHP',
    'CMS',
    'PrestaShop est une solution complète, innovante et efficace vous permettant de créer votre boutique en ligne et de développer votre business.'
  ),
  (
    71,
    'WordPress',
    'wordpress.org',
    'PHP',
    'CMS',
    'WordPress est un logiciel open source que vous pouvez utiliser pour créer un beau site Web, un blog ou une application.'
  ),
  (
    72,
    'Doc PHP',
    'www.php.net/manual/fr',
    'PHP',
    'Documentation',
    'Ce manuel se compose principalement d’une référence de fonction, mais contient également une référence de langage.'
  ),
  (
    73,
    'XAMPP',
    'www.apachefriends.org/fr/index.html',
    'PHP',
    'Environnement',
    'XAMPP est une distribution Apache entièrement gratuite & facile à installer contenant MySQL, PHP & Perl. Le paquetage open source XAMPP a été mis au point pour être incroyablement facile à installer & à utiliser.'
  ),
  (
    74,
    'CakePHP',
    'cakephp.org',
    'PHP',
    'Framework',
    'CakePHP is an open-source web, rapid development framework that makes building web applications simpler, faster and require less code. It follows the model–view–controller (MVC) .'
  ),
  (
    75,
    'CodeIgniter',
    'codeigniter.com',
    'PHP',
    'Framework',
    'CodeIgniter is a powerful PHP framework with a very small footprint, built for developers who need a simple and elegant toolkit to create full-featured web applications.'
  ),
  (
    76,
    'Laminas',
    'getlaminas.org',
    'PHP',
    'Framework',
    'Laminas Project, the enterprise-ready PHP Framework & components. A community-supported, open source continuation of Zend Framework.'
  ),
  (
    77,
    'Laravel',
    'laravel.com',
    'PHP',
    'Framework',
    'Laravel est un framework d’application Web avec une syntaxe expressive & élégante.'
  ),
  (
    78,
    'Symfony',
    'symfony.com',
    'PHP',
    'Framework',
    'Symfony est un framework PHP pour les applications Web & console & un ensemble de composants PHP réutilisables.'
  ),
  (
    79,
    'PHPUnit',
    'phpunit.de',
    'PHP',
    'Framework de Tests',
    'PHPUnit est un framework de test orienté programmeur pour PHP. Il s’agit d’une instance de l’architecture xUnit pour les frameworks de tests unitaires.'
  ),
  (
    80,
    'Lumen',
    'lumen.laravel.com',
    'PHP',
    'Micro-Framework',
    'Le micro-framework incroyablement rapide de Laravel.'
  ),
  (
    81,
    'Pam',
    'pam.devsagency.net',
    'PHP',
    'Micro-Framework',
    'Php Adaptive MicroFramework'
  ),
  (
    82,
    'Slim',
    'www.slimframework.com',
    'PHP',
    'Micro-Framework',
    'Slim is a PHP micro framework that helps you quickly write simple yet powerful web applications and APIs.'
  ),
  (
    83,
    'Composer',
    'getcomposer.org',
    'PHP',
    'Package Manager',
    'A Dependency Manager for PHP'
  ),
  (
    84,
    'Packagist',
    'packagist.org',
    'PHP',
    'Package Manager',
    'Packagist est le référentiel principal de Composer. Il agrège les packages PHP publics installables avec Composer.'
  ),
  (
    85,
    'PHP Chat',
    'phpchat.slack.com',
    'PHP',
    'Slack',
    'La communauté PHP sur Slack !'
  ),
  (
    86,
    'Symfony Devs',
    'symfony-devs.slack.com',
    'PHP',
    'Slack',
    'La communauté Symfony sur Slack !'
  ),
  (
    87,
    'PHP',
    'www.php.net',
    'PHP',
    'Specifications',
    'PHP est un langage de script polyvalent populaire qui est particulièrement adapté au développement Web.'
  ),
  (
    88,
    'PSR',
    'www.php-fig.org/psr',
    'PHP',
    'Standard',
    'PHP Standards Recommandations est un groupe de projets PHP établis dont le but est de parler des points communs entre ces projets & de trouver des moyens de mieux travailler ensemble.'
  ),
  (
    89,
    'AFSY',
    'afsy.fr',
    'PHP',
    'Tutoriels',
    'Association Francophone des Utilisateurs de Symfony. Groupe de professionnels du Web passionnés par le framework PHP Symfony.'
  ),
  (
    90,
    'SQL.sh',
    'sql.sh',
    'SQL',
    'Cours',
    'Cours et tutoriels sur le langage SQL'
  ),
  (
    91,
    'MySQL Doc',
    'dev.mysql.com/doc',
    'SQL',
    'Documentation',
    'Ceci est le manuel de référence MySQL. Il documente MySQL 8.0, ainsi que les versions de NDB Cluster basées sur la version 8.0.'
  ),
  (
    92,
    'PostGreSQL Doc',
    'docs.postgresql.fr',
    'SQL',
    'Documentation',
    'La documentation officielle de PostGreSQL en français'
  ),
  (
    93,
    'mySQL Casual',
    'mysql-casual.slack.com',
    'SQL',
    'Slack',
    'La communauté mySQL sur Slack !'
  ),
  (
    94,
    'MySQL',
    'www.mysql.com',
    'SQL',
    'Spécifications',
    'MySQL vous permet de fournir des applications OLTP (Online Transaction Processing) hautes performances & évolutives.'
  ),
  (
    95,
    'PostGreSQL',
    'www.postgresql.org',
    'SQL',
    'Spécifications',
    'PostgreSQL est un puissant système de base de données relationnelle objet open source avec plus de 30 ans de développement actif qui lui a valu une solide réputation de fiabilité, de robustesse des fonctionnalités et de performances.'
  ),
  (
    96,
    'Badgen',
    'badgen.net',
    'Git',
    'Badges',
    'Service de génération rapide de badges.'
  ),
  (
    97,
    'For The Badge',
    'forthebadge.com',
    'Git',
    'Badges',
    'Des badges pour l’amour des badges.'
  ),
  (
    98,
    'Shields IO',
    'shields.io',
    'Git',
    'Badges',
    'Nous servons des images d’information rapides & évolutives comme badges pour GitHub, Travis CI, Jenkins, WordPress, etc. Utilisez-les pour suivre l’état de vos projets ou à des fins promotionnelles.'
  ),
  (
    99,
    'GitKraken',
    'www.gitkraken.com',
    'Git',
    'Client Git',
    'GitKraken, l’interface graphique gratuite de Git pour Windows, Mac & Linux! Cette interface graphique intuitive Git simplifie & rationalise les processus Git.'
  ),
  (
    100,
    'Dependabot',
    'dependabot.com',
    'Git',
    'Dépendances',
    'Mises à jour automatisées des dépendances. Dependabot crée des pull requests pour garder vos dépendances sécurisées & à jour.'
  ),
  (
    101,
    'GitHub',
    'github.com',
    'Git',
    'Dépot de Code',
    'GitHub est l’endroit où les gens créent des logiciels. Plus de 56 millions de personnes utilisent GitHub pour découvrir & contribuer à plus de 100 millions de projets.'
  ),
  (
    102,
    'Doc Git',
    'git-scm.com/doc',
    'Git',
    'Documentation',
    'The official and comprehensive man pages that are included in the Git package itself.'
  ),
  (
    103,
    'Doc GitHub',
    'docs.github.com/en/github',
    'Git',
    'Documentation',
    'Couvre l’utilisation de Git, les pull requests, les problèmes, les wikis, les informations essentielles & tout ce dont vous avez besoin pour tirer le meilleur parti de GitHub pour le développement.'
  ),
  (
    104,
    'Code Climate',
    'codeclimate.com',
    'Git',
    'Maintenabilité du Code',
    'Velocity transforme les données des validations & des demandes d’extraction en informations dont vous avez besoin pour améliorer durablement la productivité de votre équipe.'
  ),
  (
    105,
    'Codacy',
    'www.codacy.com',
    'Git',
    'Qualité du Code',
    'Le moyen le plus simple de s’assurer que votre équipe écrit du code de haute qualité. C’est un outil d’analyse statique conçu pour analyser plus de 30 langages.'
  ),
  (
    106,
    'GitKraken',
    'gitkraken.slack.com',
    'Git',
    'Slack',
    'La communauté GitKraken sur Slack !'
  ),
  (
    107,
    'Git',
    'git-scm.com',
    'Git',
    'Spécifications',
    'Git est un système de contrôle de version distribué gratuit & open source conçu pour gérer tout, des petits projets aux très grands projets avec rapidité & efficacité.'
  ),
  (
    108,
    'FlatIcon',
    'www.flaticon.com',
    'Media',
    'Banque d’Icônes',
    'Accédez à 4 141 000 icônes vectorielles. La plus grande base de données d’icônes gratuites disponible aux formats PNG, SVG, EPS, PSD & BASE 64.'
  ),
  (
    109,
    'IconNinja',
    'www.iconninja.com',
    'Media',
    'Banque d’Icônes',
    'Icon Ninja rassemble 700081 icônes gratuites dans 16306 jeux d’icônes, y compris 33350 icônes vectorielles & 666731 icônes png fond transparent, vous pouvez également générer des sprites icône css en ligne'
  ),
  (
    110,
    'Noun Project',
    'thenounproject.com',
    'Media',
    'Banque d’Icônes',
    'Icônes & photos pour tout. Noun Project construit un langage visuel global qui nous unit.'
  ),
  (
    111,
    'ShareIcon',
    'www.shareicon.net',
    'Media',
    'Banque d’Icônes',
    'Trouver & télécharger des icônes png, svg, ico, psd, ai, icns pour les sites Web'
  ),
  (
    112,
    'FreePik',
    'fr.freepik.com',
    'Media',
    'Banque d’Images',
    'Ressources graphiques pour tout le monde. Trouvez des Vecteurs, Photos de Stock & PSD Gratuites'
  ),
  (
    113,
    'Negative Space',
    'negativespace.co',
    'Media',
    'Banque d’Images',
    'Belles photos libres de droits en haute résolution. Pour un usage personnel ou commercial, toutes nos images sous licence CC0 sont totalement gratuites!'
  ),
  (
    114,
    'Pixabay',
    'pixabay.com',
    'Media',
    'Banque d’Images',
    'Superbes images gratuites & stock libres de droits. Plus de 1,9 million d’images, de vidéos & de musique de haute qualité partagés par notre communauté talentueuse.'
  ),
  (
    115,
    'Unsplash',
    'unsplash.com',
    'Media',
    'Banque d’Images',
    'La source Internet d’images librement utilisables. Propulsé par des créateurs partout.'
  ),
  (
    116,
    'Squoosh',
    'squoosh.app',
    'Media',
    'Compression d’Images',
    'Compressez & comparez des images avec différents codecs, directement dans votre navigateur'
  ),
  (
    117,
    'TinyPNG',
    'tinypng.com',
    'Media',
    'Compression d’Images',
    'Compression intelligente PNG & JPEG. Plus d’un milliard d’images PNG & JPEG optimisées & toujours comptées!'
  ),
  (
    118,
    'Small PDF',
    'smallpdf.com',
    'Media',
    'Compression de PDF',
    'Nous simplifions le PDF. Tous les outils dont vous aurez besoin pour être plus productif & travailler plus intelligemment avec des documents.'
  ),
  (
    119,
    'PDF Zorro',
    'www.pdfzorro.com',
    'Media',
    'Editeur de PDF',
    'Parfait PDF-Online-Editor pour éditer des fichiers PDF en ligne dans le navigateur - gratuitement'
  ),
  (
    120,
    'Sejda',
    'www.sejda.com/fr',
    'Media',
    'Editeur de PDF',
    'Nous vous aidons avec vos tâches PDF. Éditeur PDF facile, plaisant & productif'
  ),
  (
    121,
    'This Person Does Not Exist',
    'thispersondoesnotexist.com',
    'Media',
    'Générateur de Visages',
    'Génération de visages humains par une Intelligence Artificielle.'
  ),
  (
    122,
    'Modul',
    'ulaval.github.io/modul',
    'JS',
    'Librairie',
    'Un ensemble de composants VueJS pour les applications Web MODUL'
  ),
  (
    123,
    'Vuetify',
    'vuetifyjs.com',
    'JS',
    'Librairie',
    'Vuetify est une bibliothèque d’interface utilisateur Vue avec des composants matériels magnifiquement fabriqués à la main.'
  ),
  (
    124,
    'Vuesax',
    'vuesax.com',
    'JS',
    'Librairie',
    'Vuesax Composants pour Vuejs'
  ),
  (
    125,
    'Indexation',
    'gist.github.com/Thithip/cfc058442e4e052aa817',
    'Git',
    'Technique',
    'Si au fur et à mesure des commits, ou après un git clone, le .gitignore peut ne plus fonctionner, Git indexe alors des fichiers qui ne le devrait pas l’être.'
  ),
  (
    126,
    'Sourcetree',
    'www.sourcetreeapp.com',
    'Git',
    'Client Git',
    'Sourcetree simplifie la façon dont vous interagissez avec vos référentiels Git afin que vous puissiez vous concentrer sur le codage.'
  );