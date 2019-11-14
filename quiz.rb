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


movie_questions = [
    Question.new(p1, 'a'),
    Question.new(p2, 'b'),
    Question.new(p3, 'c')
]

def run_quiz(movie_questions)
    answer = ""
    score = 0
    for question in movie_questions
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

run_quiz(movie_questions)