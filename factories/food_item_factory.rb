FactoryGirl.define do
  factory :food_item do
    name "break"
    mass 2
    hunger 0
    moral -1
    str 0
    int 0
    cha 0
    dex 1
    decay "stale"
    decay_probability 90
    assemble ""
    workshop "jkalsf"
    assemble_skills ""
    tools ""
    result 20
  end
end
