# Getting Started

The back-end is a full Rails project, but the expectation is that you will set up API endpoints within the `controllers/api` directory. The `/client` directory is bootstrapped with [Create React App](https://github.com/facebook/create-react-app). The proxy port (to avoid CORS issues) is set to `3001` to easily make requests to the Rails backend.

## Environment Setup

1. Install the project Ruby version `2.6.5`
2. Install Node 12 or higher (the project expects `12.16.2`)
3. Clone the repository locally
4. Install gems via `bundle install`
5. Install NPM packages via `npm install`
6. Run `rails db:migrate db:seed` from the root project directory

## Starting the Project

You will need to open 2 terminal windows to run both the frontend and backend of
the project.

```bash
$ rails s

# and in another terminal...

$ cd client
$ npm start
```

Open [http://localhost:3000](http://localhost:3000) to view the React front-end in the browser. The page will reload if you make edits, and you will also see any lint errors in the console. The Rails back-end is available at `http://localhost:3001`.

## Gems and Packages

You may want to install some Ruby Gems or NPM packages to help build the application. Please be ready to justify why you wanted to
include the package, and what benefits it brings to the project.

## Testing

### Javascript

Launch the test runner in the interactive watch mode with `npm test` in the `/client` directory. See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### Rails

Launch the [Rspec](https://github.com/rspec/rspec-rails) test suite by running `rspec` in the root project directory
