FactoryGirl.define do
  
  factory :weapons_item do
    name
    mass 2
    skill "onal"
    decay "stale"
    assemble "{steel: 3}"
    workshop "jkalsf"
    assemble_skills ""
    tools ""
    result 1
  end
end
