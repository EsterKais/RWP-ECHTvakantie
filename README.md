# ECHTvakantie

## Summary

This project was part of the Real World Project assignment at Codaisseur Academy. We were assigned a client and had a week to create a website for him using Ruby on Rails. As our co-operation was good, we decided to continue improving this project, thus the project is still a work in progress.

The purpose of this Rails webapplication is to allow our client to display his recommandations for a nice vacation. To acheive this we implemented a **CMS** for our client. This allows him to perform **CRUD** actions using forms on the website itself in a user friendly way.

Vacations are **categorized** by themes. Upon clikcing on a theme, vacations withing that theme are displayed. Besides themes, **filters** for country and region are **automatically generated** based on vacations in the database and are thus lined up with the client's input. Filters for prizing are already present.

It is also possible to **order** vacations (e.g. by name) and to **search** for specific vacations based on text. Once on a selected vacation page the visitor sees a description, pictures, location (**googlemaps** API for static maps), review by our client and **suggestions** for other vacations related to the theme.

Link to the website: https://echtvakantie.herokuapp.com/

## Homepage

![homepage](http://res.cloudinary.com/dfc7k24vb/image/upload/v1480329536/screencapture-echtvakantie-herokuapp-1480329521674_dggaml.png "Homepage Screenshot") 

## Search page

add another screenshot here

## Main challenges

## Getting started

  clone
  ```bash
  git clone git@github.com:EsterKais/RWP-ECHTvakantie.git
  cd RWP-ECHTvakantie
  ```
  install Gems
  ```bash
  bundle install
  ```
  setup database

  ```bash
  rake db:create db:migrate db:seed
  ```
  start server
  ```bash
  rails server
  ```
## Build

Ruby 2.3.1

Rails 5.0.0.1

## Database Structure

## Help
