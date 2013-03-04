
pop_list = [
    {:target => 'Early Childhood'},
    {:target => 'Elementary'},
    {:target => 'Middle'},
    {:target => 'High School'},
]

pop_list.each do |pop|
  Population.create pop
end


