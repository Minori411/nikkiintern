json.array!(@schedule) do |schedule|
    json.id event.id
    json.title event.title
    json.start event.start  
    json.end event.end 
    json.area_id event.area_id
    json.section_id event.section_id
   end