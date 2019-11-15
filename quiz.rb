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
p6 = "What is the most sold album world wide?\n(a)Back in Black by AC/DC\n(b)Thriller by Micahel Jackson\n(c)Bat out of Hell by Meatloaf"
p7 = "What is the most sold gaming console of all time?\n(a)Xbox 360\n(b)Nintendo Wii\n(c)Playstation 2"
p8 = "Who is the most recognised video game character of all time?\n(a)Mario\n(b)Solid Snack\n(c)Pac-Man"
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



numtest = 
test = movie_questions

def run_quiz(test)
    answer = ""
    score = 0
    for question in test
        puts question.prompt
        answer = gets.chomp()
        until (answer == 'a' or answer == 'b'or answer =='c')
            puts question.prompt
            puts "Please enter a, b or c"
            answer = gets.chomp()
        end
    
        if answer == question.answer
            score += 1
        end
    end
    puts "Congratulations! You got #{score} from 3"
end

run_quiz(test)