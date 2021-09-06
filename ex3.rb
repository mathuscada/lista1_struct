for i in 0..100
    if i % 3 == 0 && i % 5 == 0
        print "fizzbuzz"
    elsif i % 3 == 0
        print "fizz"
    elsif i % 5 == 0
        print "buzz"
    else
        print i
    end
    if i != 100
        print ", "
    end
end