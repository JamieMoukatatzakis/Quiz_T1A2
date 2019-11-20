# Quiz_T1A2 Development Log

## 14th November 2019
Begun basic documentation and setup of trello boards. I have selected to do a quiz like application. This seems simple enough but I can see a few issues that I might have down the line. Further thought will be required before making a final decision but for now it seems fine. I have selected a list of topics such as Music, Astrology and Chemistry to be utilised for the application. Current plan is to have 10 topics total and allow the user to pick 3 of them. A big issue I am having currently is coming up with a way to remove a topic from selection once the user has gone through the questions. I have a few ideas but they seem just outside of my skillset currently. 

## 15th November 2019
Time is running out to make a decision. I'm having doubt about doing a quiz application at this stage but have ultimately decided to stick with it. I was thinking of doing a basic web scrapper instead but with only 5-6 days left I feel it would overwhelm me currently. After some thought and looking closer at the assignment criteria I have decided to remove the 10 topics idea and instead only apply 3. These will be Music, Gaming and Movies. I will still allow the user to select the order of the topics. The same issue as before is still prevelant. I have not come up with a practical way to remove a topic from selection once completed so as to not allow the user to redo the same one.

The questions for the topics have been determines and entered into the application as strings. Focus now is to get some form of test prototype working that can display, receive user input, crosscheck user input to the correct answer and then mark accordingly.
A few gems have been thought about but none decided yet.

## 18th November 2019
Doing a quiz has proved to be a bit harder than expected. On the surface it seems easy and part of it is, but once you introduce user freedom and choices it becomes a little more complex. Test prototype is currently working. All questions are being called properly based on their topics and the scoring mechanism is working for individual sections. Some trial and error is required to ensure all components work together now, rather than one at a time. 

I might have shot myself in the foot. The approach I have taken has left me with code that is definetly not DRY. Unless i rebuild the whole application with a different approach I don't currently see a way to fix this. My best bet currently is to get to a working final draft and see if I can cut back then.

Basic error handling is done and the goal currently is to work towards a final draft by November 20th.