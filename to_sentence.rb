def to_sentence(words)
  if words.length == 1
    p words[0]
  else
    p(words[0..-2].join(", ") + " and " + words[-1])
  end
end

to_sentence(%w(cow chicken sheep))           # returns 'cow, chicken and sheep'
to_sentence(%w(circle square triangle line)) # returns 'circle, square, triangle and line'
to_sentence(%w(Alice Bob))                   # returns 'Alice and Bob'
to_sentence(%w(sword))                       # returns 'sword'
