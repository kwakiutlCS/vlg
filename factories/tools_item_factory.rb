FactoryGirl.define do
  
  factory :tools_item do
    name
    mass 2
    decay "stale"
    assemble "{steel: 3}"
    workshop "jkalsf"
    assemble_skills ""
    tools ""
    result 1
  end
end
