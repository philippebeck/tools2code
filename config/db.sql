DROP DATABASE IF EXISTS `tools2code`;
CREATE DATABASE `tools2code` CHARACTER SET utf8;

USE `tools2code`;

CREATE TABLE `Users`
(
    `id`    SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
    `name`  VARCHAR(50)     NOT NULL,
    `image` VARCHAR(50)     UNIQUE,
    `email` VARCHAR(100)    NOT NULL    UNIQUE,
    `pass`  VARCHAR(100)    NOT NULL
)
    ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Resources`
(
  `id`          SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`        VARCHAR(20)     NOT NULL    UNIQUE,
  `link`        VARCHAR(50)     NOT NULL    UNIQUE,
  `technology`  VARCHAR(5)      NOT NULL,
  `category`    VARCHAR(20)     NOT NULL,
  `description` VARCHAR(255)    NOT NULL    UNIQUE
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `Resources`
(`name`, `link`, `technology`, `category`, `description`) VALUES
('HTML Officiel',   'html.spec.whatwg.org/multipage',                   'HTML',   'Spécifications',     'HTML est le langage de balisage principal du World Wide Web.'),
('HTML Doc',        'developer.mozilla.org/fr/docs/Web/HTML/Element',   'HTML',   'Documentation',      'Cette page énumère tous les éléments HTML, regroupés ici selon leurs fonctions.'),
('MarkDown',        'www.markdownguide.org',                            'HTML',   'Preprocesseur',      'Le guide Markdown est un guide de référence gratuit & open source qui explique comment utiliser Markdown.'),
('Pug',             'pugjs.org/api/getting-started.html',               'HTML',   'Moteur de Template', 'Pug est un moteur de template haute performance fortement influencé par Haml & implémenté avec JS pour Nodejs.'),
('Twig',            'twig.symfony.com',                                 'HTML',   'Moteur de Template', 'Twig est un langage de template pour PHP, mais surtout celui de Symfony.'),
('CSS Officiel',    'www.w3.org/Style/CSS',                             'CSS',    'Spécifications',     'Les feuilles de style en cascade sont un mécanisme simple pour ajouter du style aux documents Web.'),
('CSS Doc',         'developer.mozilla.org/fr/docs/Web/CSS/Reference',  'CSS',    'Documentation',      'Utilisez cette référence CSS pour parcourir un index alphabétique de tous les éléments CSS standard.'),
('Sass',            'sass-lang.com',                                    'CSS',    'Preprocesseur',      'Sass est une extension de CSS, ajoutant des règles imbriquées, des variables, des mixins, l’héritage des sélecteurs, etc.'),
('Stylus',          'stylus-lang.com',                                  'CSS',    'Preprocesseur',      'Stylus est un nouveau langage révolutionnaire, offrant un moyen efficace, dynamique & expressif de générer du CSS.'),
('Animadio',        'animadio.org',                                     'CSS',    'Framework',          'Animadio, un Framework CSS configurable avec des variables CSS & capable de gérer des animations.'),
('Bootstrap',       'getbootstrap.com',                                 'CSS',    'Framework',          'Concevez & personnalisez rapidement des sites mobiles réactifs avec Bootstrap.'),
('Bulma',           'bulma.io',                                         'CSS',    'Framework',          'Bulma est un framework CSS open source gratuit basé sur Flexbox & construit avec Sass.'),
('Materialize',     'materializecss.com',                               'CSS',    'Framework',          'Materialise est un framework CSS réactif moderne basé sur le Material Design de Google.'),
('Pure.css',        'purecss.io',                                       'CSS',    'Framework',          'Pure est une bibliothèque CSS ridiculement petite que vous pouvez utiliser pour démarrer n’importe quel projet Web.'),
('Bootswatch',      'bootswatch.com',                                   'CSS',    'Thèmes de Framework','Thèmes gratuits pour Bootstrap. Basé sur Bootstrap. Icônes de Font Awesome. Polices Web de Google.'),
('Flexbox Froggy',  'flexboxfroggy.com',                                'CSS',    'Jeu',                'Bienvenue dans Flexbox Froggy, un jeu dans lequel vous aidez Froggy & ses amis en écrivant du code CSS !'),
('Grid Garden',     'cssgridgarden.com',                                'CSS',    'Jeu',                'Bienvenue dans Grid Garden, où vous écrivez du code CSS pour faire pousser votre jardin de carottes !'),
('ECMAScript',      'www.ecma-international.org/default.htm',           'JS',     'Spécifications',     'Ecma International est une association industrielle fondée en 1961, dédiée à la standardisation des systèmes d’information & de communication.'),
('JS Doc',          'developer.mozilla.org/fr/docs/Web/JavaScript',     'JS',     'Documentation',      'JavaScript est un langage de programmation interprété avec des fonctions de première classe.'),
('Node.js',         'nodejs.org/fr',                                    'JS',     'Runtime',            'Node.js est un runtime JavaScript basé sur le moteur Chrome V8.'),
('NPM',             'www.npmjs.com',                                    'JS',     'Package Manager',    'Node Package Manager : gestion des dépendances rapide, fiable & sécurisée pour JavaScript.'),
('Yarn',            'classic.yarnpkg.com/fr',                           'JS',     'Package Manager',    'NPM, Inc., la société derrière le gestionnaire de paquets Node, le registre npm & la CLI npm.'),
('CDNJS',           'cdnjs.com',                                        'JS',     'CDN',                'CDNJS est un service CDN gratuit & open-source approuvé par plus de 10% des sites Web, alimenté par Cloudflare.'),
('JSDelivr',        'www.jsdelivr.com',                                 'JS',     'CDN',                'Le plus grand réseau & les meilleures performances parmi tous les CDNs.'),
('Unpkg',           'unpkg.com',                                        'JS',     'CDN',                'UNPKG est un réseau de diffusion de contenu rapide & mondial pour tout sur npm.'),
('TypeScript',      'www.typescriptlang.org',                           'JS',     'Preprocesseur',      'TypeScript étend JavaScript en ajoutant des types au langage.'),
('CoffeeScript',    'coffeescript.org',                                 'JS',     'Preprocesseur',      'CoffeeScript est un petit langage qui se compile en JavaScript.'),
('Angular',         'angular.io',                                       'JS',     'Framework Frontend', 'Angular est une plate-forme pour créer des applications Web mobiles & de bureau.'),
('React',           'reactjs.org',                                      'JS',     'Framework Frontend', 'Une bibliothèque JavaScript pour créer des interfaces utilisateur.'),
('Vue.js',          'vuejs.org',                                        'JS',     'Framework Frontend', 'Vue.js - Le framework JavaScript progressif.'),
('Express',         'expressjs.com',                                    'JS',     'Framework Backend',  'Framework Web rapide & minimaliste pour Node.js'),
('Electron',        'www.electronjs.org',                               'JS',     'Framework Desktop',  'Créez des applications de bureau multiplateformes avec JS, HTML & CSS.'),
('Cordova',         'cordova.apache.org',                               'JS',     'Framework Mobile',   'Applications mobiles avec HTML, CSS & JS. Ciblez plusieurs plates-formes avec une base de code.'),
('Ionic',           'ionicframework.com',                               'JS',     'Framework Mobile',   'Ionic est la plateforme de développement d’applications mobile pour les développeurs Web.'),
('Weex',            'weex.apache.org',                                  'JS',     'Framework Mobile',   'Weex est un cadre permettant de créer des applications mobiles performantes avec une technologie Web moderne.'),
('React Native',    'reactnative.dev',                                  'JS',     'Framework Mobile',   'Créez des applications natives pour Android & iOS à l’aide de React.'),
('Vue Native',      'vue-native.io',                                    'JS',     'Framework Mobile',   'Vue Native est un framework pour créer des applications mobiles natives multiplateformes à l’aide de JavaScript.'),
('Grunt',           'gruntjs.com',                                      'JS',     'Task Runner',        'Grunt : le Task Runner de JavaScript. L’écosystème Grunt est énorme & se développe chaque jour.'),
('Gulp',            'gulpjs.com',                                       'JS',     'Task Runner',        'Une boîte à outils pour automatiser & améliorer votre flux de travail.'),
('PHP Officiel',    'www.php.net',                                      'PHP',    'Specifications',     'PHP est un langage de script polyvalent populaire qui est particulièrement adapté au développement Web.'),
('PHP Doc',         'www.php.net/manual/fr',                            'PHP',    'Documentation',      'Ce manuel se compose principalement d’une référence de fonction, mais contient également une référence de langage.'),
('Packagist',       'packagist.org',                                    'PHP',    'Package Manager',    'Packagist est le référentiel principal de Composer. Il agrège les packages PHP publics installables avec Composer.'),
('Laravel',         'laravel.com',                                      'PHP',    'Framework',          'Laravel est un framework d’application Web avec une syntaxe expressive & élégante.'),
('Symfony',         'symfony.com',                                      'PHP',    'Framework',          'Symfony est un framework PHP pour les applications Web & console & un ensemble de composants PHP réutilisables.'),
('PHPUnit',         'phpunit.de',                                       'PHP',    'Framework de Tests', 'PHPUnit est un framework de test orienté programmeur pour PHP. Il s’agit d’une instance de l’architecture xUnit pour les frameworks de tests unitaires.'),
('Drupal',          'www.drupal.org',                                   'PHP',    'CMS',                'Drupal est une plate-forme open source pour créer des expériences numériques incroyables.'),
('Magento',         'magento.com',                                      'PHP',    'CMS',                'Créez des expériences d’achat engageantes avec Magento Commerce.'),
('WordPress',       'wordpress.org',                                    'PHP',    'CMS',                'WordPress est un logiciel open source que vous pouvez utiliser pour créer un beau site Web, un blog ou une application.'),
('MySQL Officiel',  'www.mysql.com',                                    'SQL',    'Spécifications',     'MySQL vous permet de fournir des applications OLTP (Online Transaction Processing) hautes performances & évolutives.'),
('MySQL Doc',       'dev.mysql.com/doc',                                'SQL',    'Documentation',      'Ceci est le manuel de référence MySQL. Il documente MySQL 8.0, ainsi que les versions de NDB Cluster basées sur la version 8.0.');
