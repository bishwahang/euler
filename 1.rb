puts (1...1000).select{|x| x % 3 ==0 || x % 5 == 0}.inject(0){|x,y| x+y}
