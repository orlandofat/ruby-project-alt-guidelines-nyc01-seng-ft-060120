require 'pry'
class CommandLineInterface
    attr_accessor :prompt

    def initialize()
        @prompt = TTY::Prompt.new
    end

    def greetings
        puts "Welcome to Movie App!"
        puts "The best place to find movie information!" 
    end
    
    
    def main_menu
        system "clear"
        puts "Welcome, friends!"
        prompt.select("what movie info you need?") do |menu|
            # menu.choice "Actors", -> { all_actors }
            # menu.choice "Roles", -> { all_roles }
            menu.choice "Create Movie_Reviews", -> { create_movies_reviews }
            menu.choice "Movies and Reviews", -> { movies_and_reviews }
            menu.choice "Update Reviews", -> { update_reviews }
            menu.choice "Delete reviews", -> { delete_reviews } 
            menu.choice "EXIT", -> { goodbye }
            end
    end
    

    # def all_actors 
    #     #want to see all of the actors
    #     actors = Actor.all
    #     puts "All movie actors #{actors}"
    #     #self.main_menu
    # end
    
    # def all_roles
    #     #want to see all of the roles
    #     roles = Role.all
    #     puts "All movie roles #{roles}"
    #     #self.main_menu
    #end

    def create_movies_reviews
        puts "Create a new movies review"
        puts "Title:"
        answer = gets.chomp
        puts "Review:"
        answer1 = gets.chomp
        new_movie = Movie.create(title: answer, review: answer1)
        #return the new movie review
        puts "title:#{ answer}", "review:#{ answer1}"
        #movie = Movie.update(title: answer, review: answer)
        #self.main_menu
    end

    #show movie reviews
    def movies_and_reviews
        movie = Movie.all
        
    end
    
    #want to update user review
    def update_reviews
        puts "Updating the review for this movie"
        puts "Title:"
        answer = gets.chomp
        puts "Review:"
        answer1 = gets.chomp
        review = Movie.find_by(title: answer, review: answer1)
        review.update(title: answer, review: answer1)
        #return the updated review
        puts "title:#{ answer}", "review:#{ answer1}"
    end

    #delete review
    def delete_reviews
        puts "Delete your movie’s review"
        answer = gets.chomp
        review = Movie.find_by(review: answer)
        review.destroy
        #self.main_menu
    end

    def goodbye
        puts "Have a nice day, goodbye!"
    end
end
    
    
    
    
    
    
    


