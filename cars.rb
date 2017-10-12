# Create a single class that implements all functionality.
# Create a method for reading the car makes file.
# Create a method for reading the car models file.
# Create a method that invokes the previous two methods and generates a hash.
# The hash keys will be the make names.
# The value for each key will be a list of model names.

class Cars

    def car_make
        f1 = File.readlines("car_makes.txt")
        p f1
    end

    def car_model
        f2 = File.readlines("car_models.txt")
        p f2
    end

    def merged_cars

        # I need for to take the first letter of each carmake and compare it to the first letter in the car models list and create a hash that replaces the first letter in car model with the actual model name.

        # this is compiling all of the makes
        makes = []
        for item in car_make 
            car_model.each do |key, value|
                if key[0] == item[0]
                    makes.push({item => key[2..-1]}) 
                end
            end
        end
        print makes
    end

end

reading_files = Cars.new
# reading_files.car_make
# reading_files.car_model
reading_files.merged_cars

# File.open("car_models.txt") do |f|
#             #move pointer to where you want it
#             f.seek(2, IO::SEEK_SET)
#             #from that pointer, read 3
#             p f.read(20)
#         end

