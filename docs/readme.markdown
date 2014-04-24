* [Quick start](#quick-start)
* [All commands and environments by topic](#all-commands-and-environments-by-topic)
  * [General](#general)
  * [Initial pages](#initial-pages)
  * [Sections](#sections)
  * [Source code](#source-code)
  * [Algorithms](#algorithms)
  * [Figures](#figures)
  * [Tables](#tables)

# Quick start

1. Ensure that you have `texlive-full`, `texlive-extra`, `texlive-fonts-extra` installed.
1. Copy ktua4.sty and ktulogo.eps files to your project directory.
1. Create some document.tex with `\usepackage{ktua4}` in it.
1. Use the commands described below.

# All commands and environments by topic

## General

### `\ktuliterature`

TODO

### `\mq`

TODO

### `\cmd`

TODO

### `\ktucomment`

TODO

### Environment `ktuappendices`

TODO

### Environment `ktusol`

TODO

## Initial pages

### `\ktuinit`

Automatically generates and inserts a nice full front title page, table of contents, list of figures, list of tables and list of algorithms.
Lists are inserted only when at least one element of the list type is in a document.

### `\ktuauthor`

The full name of the person who is the author of this document, for example "John Doe".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktumaster`

The full name with titles of the person who accepts the document or advises to the main author, for example "prof. Jane Roe".

### `\ktutitle`

The main title of the document, for example "Knapsack problem".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktusubject`

Type of this document, a series that this document belongs, for example "Mathematical analysis report #1" or "Master's thesis".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktuyear`

Full year of the document publish date, for example "2014".

### `\ktudate`

Document publish date in ISO 8601 format, for example "2014-04-24".

### `\ktuinstitution`

The institution this document belongs to, for example "Kauno technologijos universitetas".

### `\ktufaculty`

The faculty of the institution this document belongs to, for example "Matematikos ir gamtos mokslų fakultetas".

### `\ktucathedral`

The cathedral of the faculty of the institution this document belongs to, for example "Taikomosios matematikos katedra".

### `\ktucity`

The city where the institution, faculty and cathedral is located, for example "Kaunas".

## Sections

### `\ktuchaptern`

TODO

### `\ktuchapter`

TODO

### `\ktusection`

TODO

### `\ktusubsection`

TODO

### `\ktusubsubsection`

TODO

### `\ktusecref`

TODO

## Source code

### `\ktusrc`

TODO

### `\ktusrcr`

TODO

### `\ktusrcrh`

TODO

### `\ktusrcref`

TODO

## Algorithms

### Environment `ktualgo`

TODO

### `\ktualgoref`

TODO

## Figures

### `\ktufigure`

TODO

### `\ktufigref`

TODO

### `\ktufigurewidest`

TODO

### `\ktutexfigurec`

TODO

### `\ktutextc`

TODO

### `\ktutextcl`

TODO

### `\ktutextn`

TODO

### `\ktutext`

TODO

## Tables

### `\ktutextablec`

TODO

### Environment `ktutable`

TODO

