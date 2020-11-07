DROP DATABASE IF EXISTS `learn2code`;
CREATE DATABASE `learn2code` CHARACTER SET utf8;

USE `learn2code`;

CREATE TABLE `Users`
(
    `id`    SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
    `name`  VARCHAR(50)     NOT NULL,
    `image` VARCHAR(50)     UNIQUE,
    `email` VARCHAR(100)    NOT NULL    UNIQUE,
    `pass`  VARCHAR(100)    NOT NULL
)
    ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Courses`
(
  `id`      SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`    VARCHAR(20)     NOT NULL    UNIQUE,
  `content` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Exercises`
(
  `id`      SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`    VARCHAR(20)     NOT NULL    UNIQUE,
  `content` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Resources`
(
  `id`          SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`        VARCHAR(50)     NOT NULL    UNIQUE,
  `link`        VARCHAR(100)    NOT NULL    UNIQUE,
  `technology`  VARCHAR(10)     NOT NULL,
  `category`    VARCHAR(30)     NOT NULL,
  `description` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `Resources`
(`name`,                                    `link`,                                                 `technology`,   `category`,                 `description`)
VALUES
('HTML Living Standard of W3C',             'html.spec.whatwg.org/multipage',                       'HTML',         'Specifications',           'HTML is the World Wide Web core markup language. Originally, HTML was primarily designed as a language for semantically describing scientific documents. Its general design, however, has enabled it to be adapted, over the subsequent years, to describe a number of other types of documents & even applications.'),
('HTML Elements Reference of MDN',          'developer.mozilla.org/en-US/docs/Web/HTML/Element',    'HTML',         'Specifications',           'This page lists all the HTML elements, which are created using tags. They are grouped by function to help you find what you have in mind easily. An alphabetical list of all elements is provided in the sidebar on every element page as well as this one.'),
('MarkDown, HTML Preprocessor',             'daringfireball.net/projects/markdown',                 'HTML',         'Preprocessor',             'Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML).'),
('MarkDown Guide',                          'www.markdownguide.org',                                'HTML',         'Preprocessor',             'The Markdown Guide is a free & open-source reference guide that explains how to use Markdown, the simple & easy-to-use markup language you can use to format virtually any document'),
('Pug, HTML Template Engine for JS',        'pugjs.org/api/getting-started.html',                   'HTML',         'Template Engine',          'Pug is a high-performance template engine heavily influenced by Haml & implemented with JavaScript for Node.js & browsers. For bug reports, feature requests & questions, open an issue. For discussion join the chat room.'),
('Twig, HTML Template Engine for PHP',      'twig.symfony.com',                                     'HTML',         'Template Engine',          'Twig is a template language for PHP, released under the new BSD license (code & documentation). Twig uses a syntax similar to the Django & Jinja template languages which inspired the Twig runtime environment.'),
('CSS homepage of W3C',                     'www.w3.org/Style/CSS',                                 'CSS',          'Specifications',           'Cascading Style Sheets (CSS) is a simple mechanism for adding style (e.g., fonts, colors, spacing) to Web documents.'),
('CSS specifications of W3C',               'www.w3.org/Style/CSS/specs.en.html',                   'CSS',          'Specifications',           'This page contains descriptions of all specifications that the CSS WG is working on. See the ‘current work’ page for a compact view & how to give feedback.'),
('CSS reference of MDN',                    'developer.mozilla.org/en-US/docs/Web/CSS/Reference',   'CSS',          'Specifications',           'Use this CSS reference to browse an alphabetical index of all of the standard CSS properties, pseudo-classes, pseudo-elements, data types, & at-rules. You can also browse key CSS concepts & a list of selectors organized by type. Also included is a brief DOM-CSS / CSSOM reference.'),
('Sass, CSS Preprocessor',                  'sass-lang.com',                                        'CSS',          'Preprocessor',             'Sass makes CSS fun again. Sass is an extension of CSS, adding nested rules, variables, mixins, selector inheritance, & more. It is translated to well-formatted, standard CSS using the command line tool or a plugin for your build system.'),
('Stylus, CSS Preprocessor',                'stylus-lang.com',                                      'CSS',          'Preprocessor',             'Stylus is a revolutionary new language, providing an efficient, dynamic, & expressive way to generate CSS. Supporting both an indented syntax & regular CSS style.'),
('Animadio Framework',                      'animadio.org',                                         'CSS',          'Framework',                'Animadio, CSS Framework : Frontend Programming Tool to Design Websites - Welcome : Animadio CSS Framework Website & Documentation - Grid & Flexbox Layouts - CSS Variables Usage - Reusable & Customizable Elements - Perform Complex Animations - Controls by Radio Buttons'),
('Bootstrap Framework',                     'getbootstrap.com',                                     'CSS',          'Framework',                'Quickly design & customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables & mixins, responsive grid system, extensive prebuilt components, & powerful JavaScript plugins.'),
('Bootswatch, Themes for Bootstrap',        'bootswatch.com',                                       'CSS',          'Framework',                'Free themes for Bootstrap. Based on Bootstrap. Icons from Font Awesome. Web fonts from Google.'),
('Bulma Framework',                         'bulma.io',                                             'CSS',          'Framework',                'Bulma is a free, open source CSS framework based on Flexbox & built with Sass. It''s 100% responsive, fully modular, & available for free.'),
('Materialize Framework',                   'materializecss.com',                                   'CSS',          'Framework',                'Materialize is a modern responsive CSS framework based on Material Design by Google.'),
('Pure.css Framework',                      'purecss.io',                                           'CSS',          'Framework',                'Pure is a ridiculously tiny CSS library you can use to start any web project.'),
('Flexbox Froggy',                          'flexboxfroggy.com',                                    'CSS',          'Game',                     'Welcome to Flexbox Froggy, a game where you help Froggy & friends by writing CSS code!'),
('Grid Garden',                             'cssgridgarden.com',                                    'CSS',          'Game',                     'Welcome to Grid Garden, where you write CSS code to grow your carrot garden!'),
('JavaScript reference of MDN',             'developer.mozilla.org/en-US/docs/Web/JavaScript',      'JavaScript',   'Specifications',           'JavaScript is a lightweight, interpreted, or just-in-time compiled programming language with first-class functions. While it is most well-known as the scripting language for Web pages, many non-browser environments also use it, such as Node.js. JavaScript is a prototype-based, multi-paradigm, single-threaded, dynamic language, supporting object-oriented, imperative & declarative styles.'),
('Node.js, JavaScript runtime',             'nodejs.org/en',                                        'JavaScript',   'Specifications',           'Node.js is a JavaScript runtime built on Chrome V8 JavaScript engine.'),
('NPM, Node Package Manager',               'www.npmjs.com',                                        'JavaScript',   'Package Manager',          'Fast, reliable, & secure dependency management for JavaScript.'),
('Yarn, JavaScript Dependency Management',  'classic.yarnpkg.com/en',                               'JavaScript',   'Package Manager',          'We are npm, Inc., the company behind Node package manager, the npm Registry, & npm CLI. We offer those to the community for free, but our day job is building & selling useful tools for developers like you.'),
('CDNJS, Content Delivery Network',         'cdnjs.com',                                            'JavaScript',   'Content Delivery Network', 'Simple. Fast. Reliable. Content delivery at its finest. cdnjs is a free & open-source CDN service trusted by over 10% of websites, powered by Cloudflare. We make it faster & easier to load library files on your websites.'),
('JSDelivr, Content Delivrey Network',      'www.jsdelivr.com',                                     'JavaScript',   'Content Delivery Network', 'Supports npm, GitHub, WordPress, Deno, & more. Largest network & best performance among all CDNs. Serving more than 80 billion requests per month.'),
('UNPKG, Content Delivery Network',         'unpkg.com',                                            'JavaScript',   'Content Delivery Network', 'UNPKG is a fast, global content delivery network for everything on npm. Use it to quickly & easily load any file from any package'),
('TypeScript, JS Preprocessor',             'www.typescriptlang.org',                               'JavaScript',   'Preprocessor',             'TypeScript extends JavaScript by adding types to the language. TypeScript speeds up your development experience by catching errors & providing fixes before you even run your code.'),
('CoffeeScript, JS Preprocessor',           'coffeescript.org',                                     'JavaScript',   'Preprocessor',             'CoffeeScript is a little language that compiles into JavaScript. Underneath that awkward Java-esque patina, JavaScript has always had a gorgeous heart. CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.'),
('Angular, Frontend Framework',             'angular.io',                                           'JavaScript',   'Framework',                'Angular is a platform for building mobile & desktop web applications. Join the community of millions of developers who build compelling user interfaces with Angular.'),
('React, Front Framework',                  'reactjs.org',                                          'JavaScript',   'Framework',                'A JavaScript library for building user interfaces.'),
('Vue.js, Frontend Framework',              'vuejs.org',                                            'JavaScript',   'Framework',                'Vue.js - The Progressive JavaScript Framework'),
('Express, Backend Framework',              'expressjs.com',                                        'JavaScript',   'Framework',                'Fast, unopinionated, minimalist web framework for Node.js'),
('Electron, Desktop Framework',             'www.electronjs.org',                                   'JavaScript',   'Framework',                'Build cross-platform desktop apps with JavaScript, HTML, & CSS'),
('Cordova, Mobile Framework',               'cordova.apache.org',                                   'JavaScript',   'Framework',                'Mobile apps with HTML, CSS & JS. Target multiple platforms with one code base. Free & open source'),
('Ionic, Mobile Framework',                 'ionicframework.com',                                   'JavaScript',   'Framework',                'Ionic is the app development platform for web developers. Build amazing cross platform mobile, web, & desktop apps all with one shared code base & open web standards'),
('Weex, Mobile Framework',                  'weex.apache.org',                                      'JavaScript',   'Framework',                'Weex is a framework for building performant mobile apps with modern web technology.'),
('React Native, Mobile Framework',          'reactnative.dev',                                      'JavaScript',   'Framework',                'Create native apps for Android & iOS using React. React Native combines the best parts of native development with React, a best-in-class JavaScript library for building user interfaces.'),
('Vue Native, Mobile Framework',            'vue-native.io',                                        'JavaScript',   'Framework',                'Vue Native is a framework to build cross platform native mobile apps using JavaScript'),
('MySQL Official',                          'www.mysql.com',                                        'SQL',          'Specifications',           'MySQL enables you to deliver high-performance & scalable Online Transaction Processing (OLTP) applications. It provides the ease of use that has made MySQL famous along with industrial strength performance & reliability.'),
('MySQL Documentation',                     'dev.mysql.com/doc',                                    'SQL',          'Specifications',           'This is the MySQL Reference Manual. It documents MySQL 8.0, as well as NDB Cluster releases based on version 8.0. It may include documentation of features of MySQL versions that have not yet been released.');