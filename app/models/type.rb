class Type < ApplicationRecord
  has_many :spreads

  @@typeDictionary = {
    "Once Upon a Time": {
      card_num: 8,
      order_and_position: {
        "1": {meaning: "The protagonist, before the story", position: '6'},
        "2": {meaning: "The status quo", position: 'G'},
        "3": {meaning: "What makes the situation unstable", position: '1'},
        "4": {meaning: "What makes them resist getting involved", position: '11'},
        "5": {meaning: "What overcomes that resistance", position: '5'},
        "6": {meaning: "What propels the protagonist into action", position: '7'},
        "7": {meaning: "The direction the protagonist is pushed", position: '8'},
        "8": {meaning: "The apparent goal", position: '9'}
      }
    }
  }

  def data
    @@typeDictionary[:"#{self.name}"]
  end

end
