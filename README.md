VIM Configuration
==========================
For ease of my personal VIM configuration deployment.

Installation
------------
Automatically install it without cloning this repository.

     wget -O - https://raw.github.com/josephj/vimrc/master/install.sh | sh

Installed Plugins
------------------
### align
Help folks to align text, equals, declarations, tables, etc.

Usage:

* ``\t=`` Align assignments.
* ``\t,`` Align on commas.
* ``\tsp`` Align on whitespace.
* ``\acom`` Align comments.
* ``\Htd`` Align HTML tables.

### autoclose
Inserts matching bracket, paren, brace or quote.

### jslint
VIM plugin and command line tool for running JSLint.

Usage:
* It also will display more information about the error in the commandline if the curser is in the same line.

### matchit.zip
Extended % matching for HTML, LaTeX, and many other languages.

Usage:

On any HTML tags, press ``%`` to find opening or closing tag.

### nerdcommenter
A plugin that allows for easy commenting of code for many filetypes.

Usage:

* This plugin works both in visual and normal mode.
* ``\cc``  Add general comment.
* ``\cm``  Add block comment.   
* ``\cu``  Remove comment.

### oop-javascript-indentation
Indentation script for OOP JavaScript.

Usage: 

* This plugin only works for JavaScript file.
* ``gg=G`` Make indentation for current JavaScript file.
* ``=`` Make indentation for current selection.

### phpfolding
Automatic folding of PHP functions, classes,.. (also folds related PhpDoc) 

Usage:

* ```<F5> <Esc>``` Enable fast PHP Folds.
* ```<F6> <Esc>``` Enable PHP Folds.
* ```<F7> <Esc>``` Disable PHP Folds. 

### scss-syntax
Vim syntax file for scss.

### supertab
Do all your insert-mode completion with Tab.

Usage:

* This plugin only works in insert mode.
* ```<Tab>``` It displays a menu listing all matching keywords in current file.
* ```<Shift>-<Tab>``` Just put a tab without showing the menu.

### surround
Delete/change/add parentheses/quotes/XML-tags/much more with ease.

Usage:

* Normal mode:
 * ``cs<$1><$2>`` Replace(c) surrounding(s) from $1 to $2. 
  * ``cs'"`` Replace single quotes with double quotes. 
  * ``cs'<q>`` Replace single quotes with <q/> tags.
  * ``cst"`` Replace tags with double quotes.
 * ``ds<$1>`` Delete(d) $1 surrounding.
  * ``ds"`` Delete surrounding double quotes.
 * ``yss<$1>`` Wrap entire line with $1.
* Visual mode:
 * ``S<$1>`` Wrap with $1.
  * ``S<p class="foo">`` 

### taglist
A source code browser and provides an overview of the structure of source code files.

Usage:

* ``F1`` Toggle the Tag List.

### zencoding
HTML and CSS hi-speed coding.

Usage:

1. Write CSS selector. Take ```div#foo$*2>div.bar``` for example.
1. Type ```Ctrl-y```.
1. It output HTML code.

Keyboard Shortcuts
------------------
* ```F1``` Toggle Tag List
* ```F2```
* ```F3```
* ```F4```
* ```F5 ESC``` Enable Fast PHP Folds.
* ```F6 ESC``` Enable PHP Folds.
* ```F7 ESC``` Disable PHP Folds.


