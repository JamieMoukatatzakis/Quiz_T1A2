require 'colorize'
require 'artii'

class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end


p1 = "What year was the first Star Wars movie, A New Hope released?\n(a)1977\n(b)1981\n(c)1984"
p2 = "What is Arnold Schwarzenegger's most famous role? \n(a)Conan\n(b)The Terminator\n(c)Dutch"
p3 = "What animal is Nemo from the movie Finding Nemo? \n(a)Dog\n(b)Rabbit\n(c)Fish"
p4 = "What song has spent the most time on Billboards Number 1 Spot? \n(a)Despacito\n(b)Old Town Road\n(c)One Sweet Day"
p5 = "Which artist has the most Number 1 singles? \n(a)Elvis Presley\n(b)Michael Jackson\n(c)The Beatles"
p6 = "What is the most sold album world wide?\n(a)Back in Black by AC/DC\n(b)Thriller by Michael Jackson\n(c)Bat out of Hell by Meatloaf"
p7 = "What is the most sold gaming console of all time?\n(a)Xbox 360\n(b)Nintendo Wii\n(c)Playstation 2"
p8 = "Who is the most recognised video game character of all time?\n(a)Mario\n(b)Solid Snake\n(c)Pac-Man"
p9 = "How many ghosts are there in Pac-Man?\n(a)2\n(b)3\n(c)4"

movie_questions = [
    Question.new(p1, 'a'),
    Question.new(p2, 'b'),
    Question.new(p3, 'c')
]
music_questions = [
    Question.new(p4, 'b'),
    Question.new(p5, 'c'),
    Question.new(p6, 'b')
]
gaming_questions = [
    Question.new(p7, 'c'),
    Question.new(p8, 'a'),
    Question.new(p9, 'c')
]

def clear_terminal
    system("clear")
end

appname = Artii::Base.new
clear_terminal
puts appname.asciify("Q u i z  T 1 A 2")
puts "Welcome to Quiz_T1A2 =) Please enter your name...".colorize(:light_blue)
name = gets.chomp.to_s
topic_array = ['Movies','Music','Gaming']
clear_terminal

puts "Hi #{name}, Please choose a Category.\n(1)#{topic_array[0]}\n(2)Music\n(3)Gaming".colorize(:magenta)
user_input = gets.chomp

def run_quiz test
    answer = ""
    score = 0
    for question in test
        clear_terminal
        puts question.prompt.colorize(:yellow)
        answer = gets.chomp()
        until (answer == 'a' or answer == 'b'or answer =='c')
            clear_terminal
            puts question.prompt.colorize(:yellow)
            puts "Please enter a, b or c"
            answer = gets.chomp()
        end
    
        if answer == question.answer
            score += 1
        end
    end
    clear_terminal
    puts "Congratulations! You got #{score} from 3 for this Topic"
    puts "If you would like to try another topic, Press 'y'. To Quit press any other key."
    toquit = gets.chomp
        if toquit == "y"
        else 
            clear_terminal
            puts "Thank you for playing Quiz_T1A2. Have a nice day =)"
            exit
        end   
end

if sARGV == "movies"
    test = movie_questions
    run_quiz(test)
end

test = ""
if user_input == '1'
    test = movie_questions
    run_quiz(test)
elsif user_input == '2'
    test = music_questions
    run_quiz(test)
elsif user_input == '3'
    test = gaming_questions
    run_quiz(test)
end

begin 
if user_input > '3'
    run_quiz()
end
rescue ArgumentError
    puts "Critical Error... Forced to Shutdown"
    exit
end

def next_topic(user_input, topic_array)
if user_input == '1'
    topic_array[0] = "Movies (You've already completed this)"
elsif user_input == '2'
    topic_array[1] = "Music (You've already completed this)"
elsif user_input == '3'
    topic_array[2] = "Gaming (You've already completed this)"
end
user_input = ""
end

next_topic(user_input, topic_array)

puts "Which of the remaining Topics would you like to do?"
puts "(1)#{topic_array[0]}\n(2)#{topic_array[1]}\n(3)#{topic_array[2]}".colorize(:magenta)
user_input = gets.chomp

test = ""
if user_input == '1'
    test = movie_questions
    run_quiz(test)
elsif user_input == '2'
    test = music_questions
    run_quiz(test)
elsif user_input == '3'
    test = gaming_questions
    run_quiz(test)
elsif user_input != ('1' or '2' or '3')
    puts "Error... Terminating App. Please restart and select the category with the number 1 2 or 3"
end

next_topic(user_input, topic_array)
puts "(1)#{topic_array[0]}\n(2)#{topic_array[1]}\n(3)#{topic_array[2]}".colorize(:red)

result = topic_array.reject{|item| item.include?("completed")}
clear_terminal
puts "#{result} is the last topic of this Application. Goodluck #{name}!"

if result == ["Movies"]
    test = movie_questions
    run_quiz(test)
elsif result == ["Music"]
    test = music_questions
    run_quiz(test)
elsif result == ["Gaming"]
    test = gaming_questions
    run_quiz(test)
end
clear_terminal

puts "Thank you #{name} for playing Quiz_T1A2. Have a nice day =)"
