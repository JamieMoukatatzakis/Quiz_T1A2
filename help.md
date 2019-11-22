QUIZ_T1A2 HELP FILE

In order to install/run Quiz_T1A2, first make sure that all files are within the same directory. Within this directory, there should be TWO bash scripts. These files end with the '.sh' filetype. In order to run these bash scripts the user must have execute permissions for them. This can be achieved by using the 'chmod' linux command in terminal. If the user does not have these permissions, navigate to the directory that holds the application and type the following. Please note, you may require ROOT password or access.

'chmod+x ./run.sh'      and      'chmod+x ./install-and-run.sh'

The bash script named 'run.sh' will simply attempt to launch the application.

The bash script named 'install-and-run.sh' will first attempt to install all gems used in the application first, and then attempt to launch the application.

If the application fails to launch due to gems not being installed, a list of gems needed can be found within the directory's gemfile, or a list of gems will be present further within this document.

Assuming your computer meets all the dependencies listed below, at this stage, the application should run.




DEPENDENCIES

Gems required --->  artii (2.1.2) and  colorize (0.8.1)

Ruby Version 2.6.3

Bundler Version 2.0.2 may be required if the user wishes to install gems via the available gemfiles. Gems can still be installed manually though through the terminal.

Operating System ---> This application was built for Linux. However, since it was developed on a Unix based system, it may also work on some MAC-OS systems. Minimal testing for this has been done, but results were positive if all other dependencies were met. 

Hardware ---> A working computer that meets the above dependencies and has enough storage space should be able to run this App.




MAIN FEATURES

The main features the user is likely to encounter revolve mostly with user input via the keyboard. This means, simply entering a key or supplying an input based off of the instuctions of the application. All other features are visible to the user, but they are not directly interactive with the user. 




COMMAND LINE ARGUMENTS

Placing the -h flag after launching the app will print this help page to your terminal.

Supplying any of the three current topics as a command line argument, will currently enter the user straight into the quiz section of the app for the specific topic they picked.

Current Topics = movies, music and gaming




Thank you for trying out QUIZ_T1A2
Jamie
