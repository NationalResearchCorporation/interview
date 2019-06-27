# Interview

This repo was setup for interview candidates to have a shell to start building a
simple Rails API and React Frontend application. For the most part it was
created using `rails new...` and `create-react-app` so it has all the default
features that you would expect from projects created with those tools if you are
familiar with them.

## Getting Started

### Ruby Setup

1. Install Ruby
   You will need ruby installed to get up and running with the project. For this
   version you need to install `ruby 2.5.1`. We recommend that you use
   (rvm)[https://rvm.io/] or
   (rbenv)[https://github.com/rbenv/rbenv] to install and manage ruby, but you can
   use whatever installation method you prefer.

2. Clone the repository locally

Locally clone the repo use `git`

3. Bundle Install

You should be able to run bundler from the '/danger_room' folder to
automatically install all the gems you need to run the ruby part of the application.

```bash
# if necessary
$ gem install bundler

$ bundle install
```

4. Run the App

At this point you should be able to run the application and visit
`http://localhost:3001` and see you rails started!

#### About the Rails Application

The Rails backend is actually a full rails project, not generated with `--api`.
The expectation is that you will probably setup routes for your React project
inside of the `api` folder in controllers, but if you wanted to add a gem that
needed to serve html (such as ActiveAdmin for example) you still have the
flexibility to do that.

### Javascript Setup

1. Install node with a version >= 8

You can install whatever node version you feel comfortable with as long as its 8
or greater. You can manage you node installation using (nvm)[https://github.com/nvm-sh/nvm]
if you like, but you can choose whatever installation method you prefer. Please
just make sure you update the `.nvmrc` file so that we know what version you
landed on or we will assume that you use the default of `8.16.0`

2. Install dependencies

from inside the `danger_room\client` folder, run the install command

```bash
$ npm install
```

#### About the React application

The frontend is almost entirely vanilla `create-react-app`, with the small
addition of adding in a proxy to the default rails port. This helps avoid CORS
issues, and lets you more easily make requests to the backend of the
application.

## Starting the Project

You will need to open 2 terminal windows to run both the frontend and backend of
the project. You should be able to use the following commands to get both
server started.

```bash
$ rails serve

# and in another terminal...

$ npm start
```

## Gems and Packages

If you want to install packages to the Rails or the React repositories to help
build the application, thats fine. Please be ready to justify why you wanted to
include the package, and what benefits it brings to the project.
