class NamesController < ApplicationController
  def index
    #@names = Name.all
    if params[:namelist]
      inputnames = params[:namelist]
      @names = inputnames.to_s.split(/\r\n/).each{|e|e.gsub!(/\b\w/){$&.upcase}}
      #@names = shuffle_names(@names)
      
      @results = Moniker.name_equals(@names)
      @names = generate_name_combinations(@names)

    else
      @names = "No Results"
      @results = []
    end
  end
  
  
  
  def generate_name_combinations(names_array)
    name_combinations = Array.new
    local_names = names_array.dup
    x=0
    while x != local_names.size
      local_names.each_with_index { |element, idx|  
            fname = local_names[x]
            mname = local_names[idx]
            if fname == mname
              next
            else  
              name_combinations.push("#{fname} #{mname}")
            end
      }
      x += 1
    end

    names_array = name_combinations
  end
  
end
