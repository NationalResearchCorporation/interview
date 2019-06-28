# PatientWisdom Pair Programming Interview

Here at PatientWisdom, we support each other as a team. We're constantly faced with tasks that require us to work together to accomplish them, whether it's pair programming, reviewing code or getting opinions about decisions before they're made. This interview is designed to mimic a pair programming session with other engineers on the team.

Our workflow is based on the Agile user-story model, with all feature development organized into stories that provide some background on the feature request (person, need, and purpose) and a set of acceptance criteria that the feature should meet.

We'd like to have you build the foundation for the exercises you'll work though onsite with the engineering team. We've outlined a story below to get you started.

When you arrive for your onsite interview, please have the above story as complete as possible. However, keep in mind that this exercise is designed to take no more than 2 to 3 hours to complete. If it is taking significantly longer than that, please push up a commit at a good break point and we can pick up where you left off.

## Getting Started

Please clone this repo and use it as a starting point for your development work. Instructions for how to get up and running are below.

### Tech Stack

The frontend should be built in React and the backend should be built in Rails. If you would like to use something else, please ask and we'll do our best to accomodate your request (but keep in mind that the team members you'll be pairing with have to be comfortable with the language so that the pairing sessions are productive).

### Repo Setup

Follow the [Setup Instructions](/SETUP.md) to get the base app up and running

## Development Task

### Background

Create a simple API and front-end display for a "News Feed" feature. To keep things simple, there will be no user accounts or hospital-specific requirements. The article content can just be stored as text in the database. There is no need to create a form to add/edit/delete posts for this exercise. To get started, please just provide at least 2 seed posts to show up in the interface.

### User Story
As a healthcare team member
I want to be able to view newsfeed items that my administrator posts
So that I can be informed about changes at the hospital

Acceptance Criteria
---
- [ ] There is a page that displays a table of newsfeed articles (just titles)
- [ ] Clicking on the title of an article brings me to the article's content page
  - [ ] The article content page consists of a post title and a blob of text
- [ ] There is a 'Back to Newsfeed' button at the top of every article that takes me back to the main list page

Development Notes
---
- Use of a database should be demonstrated in this exercise but there is no particular database required. Rails has SQLite built-in and that is perfectly acceptable.
- There is no need to create a form to add/edit/delete posts for this exercise.
- There is no need to support markdown, images or videos for this initial implementation
