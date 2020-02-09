$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  name_index = 0
  ww_gross_index = 0
  ww_gross_total = 0
  
  while name_index < directors_database.length do
   
    while ww_gross_index < directors_database[name_index][:movies].length do
      
      ww_gross_total += directors_database[name_index][:movies][ww_gross_index][:worldwide_gross]
     
      ww_gross_index += 1
      
    end
    
    result[directors_database[name_index][:name]] = ww_gross_total
    
    ww_gross_index = 0
    ww_gross_total = 0
    name_index += 1
    
  end
  
  return result
  
end 
  

