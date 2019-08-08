# PatientWisdom Pair Programming Interview

Here at PatientWisdom, we support each other as a team. We're constantly faced with tasks that require us to work together to accomplish them, whether it's pair programming, reviewing code or getting opinions about decisions before they're made. This interview is designed to mimic a pair programming session with other engineers on the team.

Our workflow is based on the Agile user-story model, with all feature development organized into stories that provide some background on the feature request (person, need, and purpose) and a set of acceptance criteria that the feature should meet.

We'd like to have you build the foundation for the exercises you'll work though onsite with the engineering team. We've outlined a story below to get you started.

When you arrive for your onsite interview, please have the story below as complete as possible. However, keep in mind that this exercise is designed to take no more than 2 to 3 hours to complete. If it is taking significantly longer than that, please push up a commit at a good break point and we can pick up where you left off.

## Getting Started

Please fork this repo and use it as a starting point for your development work. Instructions for how to get up and running are below. Also, be sure to send us a link to your fork of the repo prior to arriving for your interview.

### Tech Stack

The frontend should be built in React and the backend should be built in Rails.

### Repo Setup

Follow the [Setup Instructions](/SETUP.md) to get the base app up and running

## Development Task

### Background

Add a comments feature to the newsfeed item interface. Each comment should have a user associated to it, which consists of just a username. The comments can just be stored as text in the database. There is no need to create a form to add/edit/delete comments for this exercise. To get started, please just provide at least 2 seed comments for each seeded newsfeed item to show up in the interface. We also expect you to have a suite of tests for your work.

### User Story
As a healthcare team member
I want to be able to see comments made on newsfeed items
So that I can see what my colleagues think about the articles posted

Acceptance Criteria
---
- [ ] On the page showing an individual newsfeed item, there is a list of comments related to that post
- [ ] Each comment has a username associated to it

Development Notes
---
- Use of a database should be demonstrated in this exercise but there is no particular database required. Rails has SQLite built-in and that is perfectly acceptable.
- There is no need to create a form to add/edit/delete comments for this exercise.
- There is no need to support markdown, images or videos for this initial implementation
- There is no need for users to be able to login or session management of any kind.
- Users should be stored in a separate table from comments
