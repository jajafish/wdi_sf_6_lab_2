pages_with_questions = {}

lines_grabbed = ""

key = ""

File.open("story.txt", "r") do |infile|
	while (line = infile.gets)
		if line.index("~p")
			key = line
			lines_grabbed = ""
		else
			lines_grabbed += line
		end
		pages_with_questions[key] = lines_grabbed
	end
end

p1 = pages_with_questions.select do |key,value|
	key.index("~p1")
end

p1.each do |k,v|
	puts v
end

path_choice = gets.chomp
if path_choice == "1" || path_choice.include?("Gordon") || path_choice.include?("recipe") || path_choice.include?("Ramsey")
	p2 = pages_with_questions.select do |key,value|
		key.index("~p2")
	end
	p2.each do |k,v|
		puts v
	end
else
	puts ""
end

if path_choice == "2" || path_choice.include?("Whip")
	p3 = pages_with_questions.select do |key,value|
		key.index("~p3")
	end
	p3.each do |k,v|
		puts v
	end
end


if path_choice == "3" || path_choice.include?("Friend")
	p4 = pages_with_questions.select do |key,value|
		key.index("~p4")
	end
	p4.each do |k,v|
		puts v
	end
end