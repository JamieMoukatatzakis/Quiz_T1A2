# Software Development Plan - Quiz_T1A2 

by Jamie Moukatatzakis

https://github.com/JamieMoukatatzakis/Quiz_T1A2

## Statement of Purpose and Scope

Quiz_T1A2 is a simple quiz application. After inputing a name, it allows the user to select a topic and then a question appears relating to that topic. Upon answering the first question a second one appears, and this process is repeated until three questions total have been answered. It records the users answers and scores their performance at the end of the section. The user can then quit the application or proceed to further topics if they wish. Upon the completion of 3 sections/topics a bonus question is asked and scored for a total of ten questions overall. The final result of the user is displayed and the application terminates.

On many occasions I find myself in need for a break. If you're like me, a person that enjoys puzzles and little quirky bits of knowledge, you might find yourself surfing the internet hours on end learning about random things you may not even have an interest in. Have you ever realised just how tedious this is. Finding, clicking, scrolling and navigating through countless websites, videos, forum posts, news articles and who knows what else. From this thought, an idea arised.

What if there was an Application that encompassed all that quirky knowledge with just a few keyboard strokes? And such, Quiz_T1A2 was born. An application designed to removed that tedious grunt work and provide knowledge quickly on topics that interest you in a quiz format.

This application is designed for anyone to use. However, In it's current state you will require the knowledge to navigate the terminal to its source destination and execute the relevant bash script as there is no .exe file currently. Once launched however, the application will guide the user through the whole process.

As the application is currently still in development and its features are still limited, I expect it to only be used casually or as a one off launch. As more features are added, and its selection of topics increased, users may find themselves launching the app multiple times a week.


## Features

### Topic/Genre Selection

One of my features is topic selection. The user can choose from a range of topics and the questions will be relevant to that topic. Currently this is achieved by creating a global Class called *Questions*. One of the properties/objects of this class is called *prompt*, which contains the question itself. One of the advantages of this, is I can place a numeric value onto each prompt instance. For example:

* p1 = prompt1
* p2 = prompt2
* p3 = prompt3
* and so on...

This allows me to create ranges for specified topics. For example:

* p1 - p3 = Movie Section
* p4 - p6 = Music Section
* p7 - p9 = Gaming Section
* and so on...

Currently, all questions are stored as individual strings. They are grouped together in arrays, which specify the topic they belong to and the corresponding answer to the question. From here they are parsed into the Question class which displays the question to the terminal and marks the users answer in real time.

### User interaction with Terminal

Another feature is the ability for the user to interact with the application via the terminal. On several occasions, the application will ask the user for a specific input. This input is stored into variables. Based upon that input and the value of those variables the application will react accordingly. For example:

* When the application is launched, it will ask the user for a name. Once entered, the application will refer to the user by their entered name.

* When selecting a topic, the user will enter the number that corresponds with that topic.

* When answering a question, the user will input *a* *b* or *c* for their answer.

Currently, there is a little error handling to ensure the user enters an appropriate input. Specifically that an interger is entered when required and that an appropriate letter is also entered when required. If a wrong input is entered, the application will reask the question however this time it will display a prompt informing the user of the expected input. There is no error handling for when the user is asked for their name. 

### Scoring the User

After each section, the user is displayed their score. It's simply the amount of questions they got correct compared to the amount of questions asked. Currently there are only three questions per section so the questions asked is hard coded to the value three. The score however is tracked by a variable named *score*. When the user inputs there answer it's compared to the correct answer. If the values match, the users score is increased by one. If the values don't match, the users score remains the same.

There are three possible sections plus a bonus question so the user is always scored against the value of ten unless they terminate the program early.

## User Interaction and Experience

Included in the repositry will be a bash script file. Executing this script should launch the application. The application itself is pretty straight forward. Alot of the features are dealt with by the program itself and only require minimal user interaction such as entering input upon request. 

The application itself requires some gems in order to function correctly. Although the program may run without these gems, the desired result will not be achieved without them. Included within the bash script will be terminal commands that should install the relevant gems before launching the application. If this fails, a list of required gems can be found in the relevant gem files, or from the help file. 

If the user is unsure with how to interact with the application, they can consult the help file which provides an explanation of all the features the user is expected to encounter.

If an error occurs, the program should prompt the user with details regarding said error. In most cases, this is simply an unexpected type of input. For example, if an interger is entered when a specific letter was expected, the following will be displayed:
> Please enter a, b or c

If an unknown error occurs the program will terminate and display the following:

> Critical Error... Forced to Shutdown

## Control Flow Diagram

To be added

