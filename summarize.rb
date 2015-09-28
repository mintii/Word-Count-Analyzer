text = %q{
  Ruby is the great programming language. It is object oriented and has many grovvy features. Some people don't like it, but that's not our problem! It's easy to learn. It's great. To learn more about Ruby, visit the offical Ruby Web site today.}

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_senteces = sentences_sorted.slice(one_third, one_third + 1)
ideal_senteces = ideal_senteces.select {|sentence| sentence =~ /is|are/}
puts ideal_senteces.join('. ')
