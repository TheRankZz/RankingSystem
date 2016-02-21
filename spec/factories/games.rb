FactoryGirl.define do
  factory :game do |g|
    g.title 'The Witcher 3: Wild Hunt'
    g.developer 'CD Project Red'
    g.description 'Dies ist eine Beispielbeschreibung'
    g.releaseDate '2015-05-05'
    g.link 'http://www.amazon.de/The-Witcher-Wild-Hunt-Standard/dp/B00KNZNSWO'
    g.genres { [FactoryGirl.build(:genre)]}
    g.platforms { [FactoryGirl.build(:platform)]}
  end
end