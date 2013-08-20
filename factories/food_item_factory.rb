FactoryGirl.define do
  factory :food_item do
    name "break"
    mass 2
    hunger 0
    moral -1
    con 0
    int 0
    cha 0
    
    decay "stale"
    decay_probability 90
    assemble "{flour: 3}"
    workshop "jkalsf"
    assemble_skills ""
    tools ""
    result 20
  end
end
