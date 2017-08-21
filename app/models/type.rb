class Type < ApplicationRecord
  has_many :spreads

  @@typeDictionary = {
    "Once Upon a Time": {
      card_num: 8,
      order_and_position: {
        "1": {meaning: "The protagonist, before the story", position: 6, z: 0},
        "2": {meaning: "The status quo", position: 6, z: 1},
        "3": {meaning: "What makes the situation unstable", position: 1, z: 0},
        "4": {meaning: "What makes them resist getting involved", position: 11, z: 0},
        "5": {meaning: "What overcomes that resistance", position: 5, z: 0},
        "6": {meaning: "What propels the protagonist into action", position: 7, z: 0},
        "7": {meaning: "The direction the protagonist is pushed", position: 8, z: 0},
        "8": {meaning: "The apparent goal", position: 9, z: 0}
      }
    }
  }

  def data
    @@typeDictionary[:"#{self.name}"]
  end

end
