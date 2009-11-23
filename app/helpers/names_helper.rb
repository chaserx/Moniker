module NamesHelper
  
  def generate_gender_symbol(gender)
    if gender == 'male'
      image_tag("male.png", :size => "16x16", :alt => "Male")
    elsif gender == 'female'
      image_tag("female.png", :size => "16x16", :alt => "Female")
    else
      image_tag("error.png", :size => "16x16", :alt => "error")
    end
  end
  
end
