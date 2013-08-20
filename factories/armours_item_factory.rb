FactoryGirl.define do
  
  factory :armours_item do
    name
    mass 2
    decay "stale"
    quality 90
    assemble "{steel: 3}"
    workshop "jkalsf"
    assemble_skills ""
    tools ""
    result 1
  end
end
