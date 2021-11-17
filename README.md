![](app/assets/images/cnbanner.png)

<div align="center">

![](https://img.shields.io/github/last-commit/arthurfincham/classnotesv2)
![](https://img.shields.io/github/languages/count/arthurfincham/classnotesv2)
![](https://img.shields.io/github/languages/code-size/arthurfincham/classnotesv2)

### [live preview](https://classnotesv2.herokuapp.com/users/sign_in)

</div>

## Table of Contents
- [Motivation](#Motivation)
- [Preview](#Preview)
- [Features](#Features)
- [Install](#Install)
- [Stack](#Stack)
  * [Project](#Project)
  * [Testing](#Testing)
  * [Gems](#Gems)

## Motivation

One of my hobbies is Brazilian Jiu Jitsu, a martial art which depends on the accumilation of knowledge and skill. A problem, however, is how to keep track of all this knowledge. Previously I used a Google sheet to keep notes, but I thought there was a better way.

<br>
<div align="center">

<img src="app/assets/gifs/googlesheet.gif" width="500"/>

</div>
<br>

Enter **_Classnotes_**: a simple, lightweight journal to accompany learning. The idea is that after class you can write down what you learned, tag it, and then build a repository of techniques and ideas that can be quickly accessed.

## Preview 

<img src="app/assets/gifs/desktop_gif.gif" align="left"/>

<p>&nbsp;</p>


## Features

<img src="app/assets/gifs/mobile_gif.gif" align="right" height="400"/>

- [x] Tagging for notes.
- [x] Sorting notes by tag; this allows the user to filter by technique and position.
- [x] Seperate fields for technique and sparring.
- [x] Responsive design; app can be used on mobile or desktop.
- [ ] Sharing notes between _friends_.
- [ ] Sorting by class and instructor.

<br>
<br>
<br>
<br>
<br>
<br>

## Install
Clone the repository
``` bash
% git clone https://github.com/arthurfincham/REPO_NAME
```
Go to the project directory and install dependencies:
```bash
% cd REPO_NAME
```
``` bash
% bundle install
 ```
#### Set up [PostgreSQL](https://www.postgresql.org/download/) if not already installed.

Create databases
```bash
% rails db:create
```
Migrate tables
```bash
% rails db:migrate
```
Run the server
```bash
% bundle exec rails server
```


## Stack

### Project

|                 | Tool                                      | Use?                                       | Where can I see it?                                             |
| :-------------: | ----------------------------------------- | ------------------------------------------ | --------------------------------------------------------------- |
|   <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/1200px-Postgresql_elephant.svg.png" height="auto" width="50">    | [PostgreSQL](https://www.postgresql.org)  | Object-relation database.                  | ```/db/migrations/*``` In the SQL commands below.               |
| <img src="https://image.pngaaa.com/154/4122154-middle.png" height="auto" width="50">  | [Ruby on Rails](https://rubyonrails.org/) | Server-side web framework written in Ruby. | Everywhere!                                                     |
|  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Bootstrap_logo.svg/1280px-Bootstrap_logo.svg.png" height="auto" width="50">   | [Bootstrap](https://getbootstrap.com/)    | Open source tool-kit made by twitter.      | In the basic design structure of tables and navigation.         |
|  <img src="https://www.drupal.org/files/issues/2019-12-27/heroku_logo.png" height="auto" width="50">   | [Heroku](https://www.heroku.com/)    | Cloud platform for deploying web apps.      | Hosting the live preview.         |

### Testing

|             | Tool                                                 | Use?                                | Where can I see it?                                 |
| :---------: | ---------------------------------------------------- | ----------------------------------- | :-------------------------------------------------- |
| <img src="https://rspec.info/images/logo_ogp.png" height="auto" width="50">  | [RSpec](https://rspec.info/)                         | Testing tool for Ruby.              | ```/spec/*``` Unit tests for the app's classes.     |
|  <img src="https://www.braveterry.com/wp-content/uploads/2015/01/capybara.jpg" height="auto" width="50">    | [Capybara](https://github.com/teamcapybara/capybara) | Acceptance test framework for Ruby. | ```/spec/features/*``` Feature testing for the app. |


### Gems

|       | Gem                                                                | Use?                                                                   |
| :---: | ------------------------------------------------------------------ | ---------------------------------------------------------------------- |
| :gem: | [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) | Extends the matchers of Rspec.                                         |
| :gem: | [devise](https://github.com/heartcombo/devise)                     | Flexible authentication solution for Rails.                            |
| :gem: | [awesome_print](https://github.com/awesome-print/awesome_print)    | One of my favourite gems; pretty prints output from the Rails console. |