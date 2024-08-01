# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

User {
  id,
  username
}

Participant {
  user_id,
  session_id
}

Question {
  id,
  text
}


Answer {
  id,
  question_id,
  user_id,
  text,
}

Session {
  id,
  answering_start_time,
  answering_duration,
  matching_duration
}

Join table [Questions in the current session]
SessionQuestion {
  id,
  session_id,
  question_id
}

Matching an answer to the user(user_id) who gave an answer(answer_id) to a question (question_id) during a specific session(session_id). 
MatchedAnswer {
  id,
  user_id, // User who matched an answer to a question
  question_id,
  answer_id,
  session_id
}

Relationships
1. Session to Question : Many to Many
2. Answer to Question : One to One