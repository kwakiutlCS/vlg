FactoryGirl.define do
  sequence :name do |n|
    "cloth#{n}"
  end
  
  factory :clothes_item do
    name
    mass 2
    moral -1
    decay "stale"
    function "torso"
    assemble ""
    workshop "jkalsf"
    assemble_skills ""
    tools ""
    result 1
  end
end
