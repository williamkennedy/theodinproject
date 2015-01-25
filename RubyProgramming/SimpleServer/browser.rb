require 'socket'

host = "localhost" #The Web Server
port = 2000


#This is the HTTP request we sent to fetch a file
#request = "Get #{path} HTTP/1.0\r\n\r\n"

puts "What type of request do you want to make, POST or GET?"
request_path = gets.chomp.downcase

if request_path == "GET"
	request = "Get #{path} HTTP/1.0\r\n\r\n"

elsif request_path == "POST"
	puts "What is your name?"
	name = gets.chomp
	puts "What is your email?"
	email = gets.chomp

	viking ={:viking => {:name=> name, :email=> email}}




socket = TCPSocket.open(host, port) # Connect to Server
socket.print(request) #send request
response = socket.read
# Split response at first blank line into headers and body
headers,body = response.split("\r\n\r\n", 2)
print body #And display it