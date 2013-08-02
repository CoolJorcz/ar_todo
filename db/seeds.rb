require 'faker'

def make_fake
  Faker::Lorem.sentence(sentence_count = 3)
end

30.times do
  Task.create(description: "#{make_fake}", complete: false)
end

