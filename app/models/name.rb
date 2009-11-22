class Name
  def shuffle(names)
    @names = names.sort_by { rand }.first
  end
  
  
end