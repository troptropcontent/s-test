![](logoReadMeSmall.png)

## If you want to give the app a try

You can visit the link [quizztom.herokuapp.com/](https://quizztom.herokuapp.com/)

## Welcome in QuizzTom
QuizzTom is a application wich proposes 46 quizzes.
The quizzes are divided in 13 catégories :

- Animals
- Archeology
- Art
- Bd
- Celebrites
- Cinema
- General_culture
- Geography
- Gastronomy
- History
- Litterature
- Music
- Natur

The quizzes are also divided by three difficulty level : 

- Begginer
- Advance
- Expert

# Screenshot of the quizz list of the app

![](captureIndexSmall.png)


## Data Schema

I created five models to structure the data of the app:

![](dbSchemaSmall.png)

- Quizz
- Question
- Answer
- AttemptAnswer
- User

## Setup

To launch the app for the first time you can run the following command line:

```
bundle install
```

Then kickstart the database:

```
rails db:create
rails db:migrate
rails db:seed
```
Finally, launch a local server 

```
rails s
```

Visit the localHost window generated on the port of you choice

You are all set now, you can give the app a try !

## Guidelines
- Fork this repository
- You can add any framework, library or plugin you'd like
- In short: Do whatever you want to get the job done
- Make sure the application works out-of-the box once you're done
- Push changes to your git fork
- Add a short description on how to run your program in the Setup section above. (A person ariving new to the project should be able to follow your instructions and run it)
- Check the finished features in the Assignment and Bonus section by putting an 'X' ([X]) in between the brackets
- Quality over quantity, better half of the features 100% done, than 100% of the features half-done
- Assignment :
  - You are asked to build a simple Quizz App

## User
 [X] A user can log in with a valid username and password through a login screen

 [X] A user can see a collection of quizzes

 [X] A user can start a quizz

 [X] A user can answer 3 questions on a quizz

 [X] A user can see the scores of his quizzes


## Quizz
 [X] A quizz has a Title

 [X] A quizz has a maximum of 3 questions

 [X] A quizz is considered passed if +60% of questions are answered correctly

## Question
 [X] A question has a maximum of 4 answers

 [X] A question has only 1 possible correct answer


## Bonus
- Some nice to haves, when there is time to spare.

 [X] A quizz can have a dificulty level

 [ ] Add admin role

 [ ] A user with admin role can create and edit quizzes

 [X] A user can come back to a started quizz at the question he stopped

 [X] Add or improve a feature of your own choice
