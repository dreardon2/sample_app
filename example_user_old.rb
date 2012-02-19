class User
  attr_accessor :name, :email  #creates attribute accessors corresponding to a user’s name and email address. 
  #This creates “getter” and “setter” methods that allow us to retrieve (get) and assign (set) @name and @email instance 
  #variables.

  def initialize(attributes = {}) 
    @name  = attributes[:name]
    @email = attributes[:email]
    #The first method, initialize, is special in Ruby: it’s the method called when we execute 
    # User.new. This particular initialize takes one argument, attributes
    # Here the attributes variable has a default value equal to the empty hash, so that we can define a user with no name 
    #or email address (recall from Section 4.3.3 that hashes return nil for nonexistent keys, so attributes[:name] will be 
    #nil if there is no :name key, and similarly for attributes[:email]).
  end

#Finally, our class defines a method called formatted_email that uses the values of the assigned @name and @email variables 
#to build up a nicely formatted version of the user’s email address using string interpolation

  def formatted_email
    "#{@name} <#{@email}>"
  end
end