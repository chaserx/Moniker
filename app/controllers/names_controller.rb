class NamesController < ApplicationController
  def index
    #@names = Name.all
    if params[:namelist]
      inputnames = params[:namelist]
      @names = inputnames.to_s.split(/\r\n/).each{|e|e.gsub!(/\b\w/){$&.upcase}}
      #@names = shuffle_names(@names)
      
      @names = generate_name_combinations(@names)
    else
      @names = "No Results"
    end
  end
  
  def shuffle_names(names)
    #return names.sort_by { rand }
    names_output_array = Array.new
    local_names_array = names.dup
    
    local_names_array.each_with_index {|e, i|
      if e != local_names_array.last
          unless i == local_names_array.size
            names_output_array.push("#{e} #{local_names_array.values_at(i+1)}")
          end
      end
  
    }
    local_names_array.delete(local_names_array.first)
    names = names_output_array
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
