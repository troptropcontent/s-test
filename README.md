![](logoReadMeSmall.png)

## If you want to give the app a try

You can visit the link [quizztom.herokuapp.com/](https://quizztom.herokuapp.com/)

## Welcome in QuizzTom
QuizzTom is an application wich proposes 46 quizzes.
The quizzes are divided in 13 catégories :

- Animals
- Archeology
- Art
- Bd
- Celebrities
- Cinema
- General_knowledge
- Geography
- Gastronomy
- History
- Litterature
- Music
- Nature

The quizzes are also divided by three difficulty levels : 

- Begginer
- Advanced
- Expert

# Screenshot of the quizz list in the app

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
yarn install
```

Then kickstart the database:

```
rails db:create
rails db:migrate
rails db:seed
```
Finally, launch a local server :

```
rails s
```

Visit the localHost window generated on the port of you choice.

You are all set now, you can give the app a try !
