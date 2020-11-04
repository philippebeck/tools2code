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
  `category`    VARCHAR(20)     NOT NULL,
  `description` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `Resources`
(`name`,                                `link`,                                                 `technology`,   `category`,         `description`)
VALUES
('HTML Living Standard of W3C',         'html.spec.whatwg.org/multipage',                       'html',         'Specifications',   'HTML is the World Wide Web core markup language. Originally, HTML was primarily designed as a language for semantically describing scientific documents. Its general design, however, has enabled it to be adapted, over the subsequent years, to describe a number of other types of documents and even applications.'),
('HTML Elements Reference of MDN',      'developer.mozilla.org/en-US/docs/Web/HTML/Element',    'html',         'Specifications',   'This page lists all the HTML elements, which are created using tags. They are grouped by function to help you find what you have in mind easily. An alphabetical list of all elements is provided in the sidebar on every element page as well as this one.'),
('MarkDown, HTML Preprocessor',         'daringfireball.net/projects/markdown',                 'html',         'Preprocessor',     'Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML).'),
('MarkDown Guide',                      'www.markdownguide.org',                                'html',         'Preprocessor',     'The Markdown Guide is a free and open-source reference guide that explains how to use Markdown, the simple and easy-to-use markup language you can use to format virtually any document'),
('Pug, HTML Template Engine for JS',    'pugjs.org/api/getting-started.html',                   'html',         'Template Engine',  'Pug is a high-performance template engine heavily influenced by Haml and implemented with JavaScript for Node.js and browsers. For bug reports, feature requests and questions, open an issue. For discussion join the chat room.'),
('Twig, HTML Template Engine for PHP',  'twig.symfony.com',                                     'html',         'Template Engine',  'Twig is a template language for PHP, released under the new BSD license (code and documentation). Twig uses a syntax similar to the Django and Jinja template languages which inspired the Twig runtime environment.'),
('CSS homepage of W3C',                 'www.w3.org/Style/CSS',                                 'css',          'Specifications',   'Cascading Style Sheets (CSS) is a simple mechanism for adding style (e.g., fonts, colors, spacing) to Web documents.'),
('CSS specifications of W3C',           'www.w3.org/Style/CSS/specs.en.html',                   'css',          'Specifications',   'This page contains descriptions of all specifications that the CSS WG is working on. See the ‘current work’ page for a compact view and how to give feedback.'),
('CSS reference of MDN',                'developer.mozilla.org/en-US/docs/Web/CSS/Reference',   'css',          'Specifications',   'Use this CSS reference to browse an alphabetical index of all of the standard CSS properties, pseudo-classes, pseudo-elements, data types, and at-rules. You can also browse key CSS concepts and a list of selectors organized by type. Also included is a brief DOM-CSS / CSSOM reference.'),
('Sass, CSS Preprocessor',              'sass-lang.com',                                        'css',          'Preprocessor',     'Sass makes CSS fun again. Sass is an extension of CSS, adding nested rules, variables, mixins, selector inheritance, and more. It is translated to well-formatted, standard CSS using the command line tool or a plugin for your build system.'),
('Stylus, CSS Preprocessor',            'stylus-lang.com',                                      'css',          'Preprocessor',     'Stylus is a revolutionary new language, providing an efficient, dynamic, and expressive way to generate CSS. Supporting both an indented syntax and regular CSS style.'),
('Flexbox Froggy',                      'flexboxfroggy.com',                                    'css',          'Game',             'Welcome to Flexbox Froggy, a game where you help Froggy and friends by writing CSS code!'),
('Grid Garden',                         'cssgridgarden.com',                                    'css',          'Game',             'Welcome to Grid Garden, where you write CSS code to grow your carrot garden!');
