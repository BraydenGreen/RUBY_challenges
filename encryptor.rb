require 'pry'
# encryptor
  # 1 - write a ruby script that takes in 2 arguements - a key(int) and a string to encrypt(string) 
  # 2 - encrypt the string with random letters in between each character based off of the key

  # example - encrypt(2, 'hello')
  # output - hdkelxslieo

  # # get arguments

  def get_input
    puts "Please Input Somethig to Encrypt:"
    @encrypt_text = gets.split("")
    
    puts "Please enter an integer for your key:"
    @encrypt_key = gets.chomp.to_i
  end

  # get random function
  # supply alphabet into random function and merge with gotted key
  def randomValue
    ('a'..'z').to_a.sample
  end

  # perform encryption

  def encrypt
    encrypted_text = ''
    @encrypt_text.each do |x|
      encrypted_text << x
      @encrypt_key.times do |n|
        encrypted_text << randomValue
      end
    end
    print encrypted_text
  end

  get_input
  encrypt
  

  # let user know encryption was successful.

