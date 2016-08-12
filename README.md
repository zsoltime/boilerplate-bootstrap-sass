# Sass Boilerplate for Bootstrap Compass Projects

This is a simple boilerplate for my projects based on Bootstrap 3, using the 
[7-1 pattern](http://sass-guidelin.es/#the-7-1-pattern). 

## Install Bootstrap Sass

Install the gem if it's not already installed:

`gem install bootstrap-sass`

Create a new Compass project and generate it with Bootstrap support:

`compass create my-new-project -r bootstrap-sass --using bootstrap`

## 7-1 Pattern

All the `_partials` are placed into 7 different folders and we have 1 main 
file (`style.scss`) which imports them all.

### Base folder

The `base/` folder contains the boilerplate code for the project. This is the
place for reset files, standard styles for commonly used HTML elements, 
typographic rules, etc.

If we use a lot of CSS animations, we can include an `_animations.scss` file
with all the `@keyframes` definitions here.

### Components folder

The `components/` folder contains small (widgets-like), reusable components.
Modules like buttons, sliders, loaders, tooltips, etc.

If we want to style our components from a theme inside the `themes/` folder,
declarations should be limited to structural styles only (dimensions, margins,
paddings, etc)

### Layout folder

The `layout/` folder contains the grid system and the main parts of the site,
like headers, footers, sidebars, navigation, etc. Unlike `components/` folder,
which contains tiny widgets, it is focused on defining the global wireframe.

### Pages folder

The `pages/` folder contains files with page-specific styles, named after the
page. 

### Themes folder

If we have different themes, the `themes/` folder contains styles like colors,
background rules, font rules, etc. 

### Utils folder

The `utils/` folder contains all the Sass tools and helpers, like variables,
mixins and placeholders.

### Vendors folder

The `vendors/` folder contains all the files from external libraries and
frameworks.

### Main file

The main file (`style.scss`) should be the only Sass file not to begin with an
underscore. This file only contains `@import`s and comments.

Files should be imported according to the folder they live in, in the following
order:

- `utils/`
- `vendors/`
- `base/`
- `layout/`
- `components/`
- `pages/`
- `themes/`
- `shame`

### Shame file

I usually import a `_shame.scss` file in my main stylesheet last. (First seen 
on [CSSWizardy](http://csswizardry.com/2013/04/shame-css/)) 

This file is used for tests, quick fixes and questionable codes which should 
later tidied up and moved into the proper structure.

