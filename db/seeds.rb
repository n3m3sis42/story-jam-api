# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jason = User.create(username: "jason", first_name: "Jason", last_name: "Tseng")

sarah = User.create(username: "sarah", first_name: "Sarah", last_name: "Evans")

jam1 = Jam.create(name: "test1", description: "a test jam")

jason.jams << jam1
sarah.jams << jam1

story1 = Story.create(title: "A story as old as time", content: "Once upon a time...")

once_upon = Type.create(name: "Once Upon a Time")

category1 = Category.create(name: "Identity")
category2 = Category.create(name: "Emotion")
category3 = Category.create(name: "Will")
category4 = Category.create(name: "Wealth")
category5 = Category.create(name: "Destiny")

cardData = [
  {
    name: 'The Fan',
    description: 'This person deeply admires someone and seeks every change to sing his or her praises.',
    flipped_name: 'The Secret Admirer',
    flipped_description: 'This person keeps to the shadows, either too shy to publicly admit his or her adoration or because the attention may be unwelcome.',
    image_url: '',
    flipped_image_url:'',
    category_id: 1
  },
  {
    name: 'Pleasure',
    description: 'Whether as a goal or a reward for hard work, pleasure becomes the focus of attention.',
    flipped_name: 'Pain',
    flipped_description: 'Actions are driven purely by physical or emotional pain; either to put an end to the suffering or to strike out at the source.',
    image_url:'',
    flipped_image_url:'',
    category_id: 1
  },
  {
    name: 'The Relative',
    description: 'Whether making soup for the ill or providing a shoulder to cry on, nobody understands or cares like family.',
    flipped_name: 'Meddler',
    flipped_description: 'Even the most genuinely concerned relative can be too eager to assist. This help may be unwelcome or driven by selfish motives',
    image_url:'',
    flipped_image_url:'',
    category_id: 2
  },
  {
    name: 'Humility',
    description: 'Remaining humble even in the face of accolades is the mark of a strong character-- or perhaps low self-esteem.',
    flipped_name: 'Pride',
    flipped_description: "The excessive belief in one's own worth and abilities has been called the sin from which all others arise.",
    image_url:'',
    flipped_image_url:'',
    category_id: 2
  },
  {
    name: 'The Monster',
    description: 'Raw, unthinking destruction, chaos made flesh. This is the bogeyman, the ripper, the source of all fears and nightmares',
    flipped_name: 'The Wolf',
    flipped_description: "Sometimes the Monster is cloaked in a perfectly mundane guise, easily mistaken for one of the sheep. That doesn't make it any less dangerous",
    image_url:'',
    flipped_image_url:'',
    category_id: 3
  },
  {
    name: 'The Patron',
    description: 'The assistance that this person provides is materialn in nature and intended to help someone realize a shared vision.',
    flipped_name: 'The Investor',
    flipped_description: 'This person expects a substantial return for their contribution or support.',
    image_url:'',
    flipped_image_url:'',
    category_id: 4
  },
  {
    name: 'Harmony',
    description: 'Whether taking the form of the physical environment or the general populace, the forces of the external world are united in providing support.',
    flipped_name: 'Adversity',
    flipped_description: "Someone just can't get a break; the world or its people seem to be determined to provide nothing but resistance.",
    image_url:'',
    flipped_image_url:'',
    category_id: 5
  },
  {
    name: 'Demolition',
    description: 'Though something important is destroyed, the loss clears the way for something new',
    flipped_name: 'Destruction',
    flipped_description: 'A catastrophic physical disaster may affect only a single individual or threaten the entirety of humanity.',
    image_url:'',
    flipped_image_url:'',
    category_id: 5
  },
  {
    name: 'Identity',
    description: 'Knowing who someone really is beomces of utmost importance',
    flipped_name: 'Disguise',
    flipped_description: 'Someone has assumed a false identity; traveling incognito, lying about their credentials, or concealing an unsavory past',
    image_url:'',
    flipped_image_url:'',
    category_id: 1
  },
  {
    name: 'The Prodigy',
    description: 'The "goldn child" is loved and admired by all. It is felt that this person can do no wrong, whether it is true or not.',
    flipped_name: 'The Black Sheep',
    flipped_description: "This person has always been held in suspicion or actively shunned by other for having a legendarily bad reputation, even if it isn't earned.",
    image_url:'',
    flipped_image_url:'',
    category_id: 2
  },
  {
    name: 'Forgiveness',
    description: 'As hard as it may be, it is time to let go of grudges and forgive those who may have caused harm.',
    flipped_name: 'Wrath',
    flipped_description: 'Vengeance can not be denied. The wronged can not rest or even think of anything else until the offenders have paid dearly',
    image_url:'',
    flipped_image_url:'',
    category_id: 2
  },
  {
    name: 'Law',
    description: 'This can be the idea of law, the institution of the legal system or the intervention of a law enforcement agency.',
    flipped_name: 'Crime',
    flipped_description: 'The negation or ignorance of law. Can represent a career criminal or that a crime has taken place.',
    image_url:'',
    flipped_image_url:'',
    category_id: 3
  },
  {
    name: 'Virtue',
    description: 'Someone acts in accordance with that which is known to be right and true.',
    flipped_name: 'Vice',
    flipped_description: 'Even knowing it to be wrong, someone gives in to his or her baser nature, selfishly pusuing only the most prurient interestes.',
    image_url:'',
    flipped_image_url:'',
    category_id: 1
  },
  {
    name: 'Sanity',
    description: 'Calm hearts go hand in hand with keen minds. Clarity of thought and understanding are paramount.',
    flipped_name: 'Madness',
    flipped_description: 'Clear thinking breaks down and gives way to hysteria. Can be indivative of either mental illness or damage from psychological trauma.',
    image_url:'',
    flipped_image_url:'',
    category_id: 3
  },
  {
    name: 'Hope',
    description: 'Hope can keep the darkness at bay, even when the situation is grim. As long as there is the remote possibility of achieving the goal, the strength and courage to go on will be found.',
    flipped_name: 'Despair',
    flipped_description: 'Once hope is crushed, and lost, the will to continue is almost impossible to rekindle.',
    image_url:'',
    flipped_image_url:'',
    category_id: 2
  },
  {
    name: 'The Mirror',
    description: "Self-examination is the key; a deep understanding of core values and a clear grasp of one's strengths and weaknesses are crucial.",
    flipped_name: 'Denial',
    flipped_description: 'Self-rejection; one refuses to recognize the person they see reflected in the mirror.',
    image_url:'',
    flipped_image_url:'',
    category_id: 1
  },
  {
    name: 'Gnosis',
    description: 'A firm understanding of the difference between good and evil allows one to choose with certainty, but one must still make that choice.',
    flipped_name: 'Innocence',
    flipped_description: 'There are many who believe that innocence is the original sin. One must know the difference between good and evil to make an informced choice, and that knowledge may be lacking.',
    image_url:'',
    flipped_image_url:'',
    category_id: 3
  },
]


cards = cardData.map do |card|
  newcard = Card.create(card)
end

spread1 = Spread.create(title: "Trying this out", description: "My spread", type_id: 1, jam_id: 1)

cards_for_spread = cards[0..7].map { |card| CardSpread.create(card_id: card.id, spread_id: spread1.id, flipped: true) }

# spread1.cards << cards[0..7]



story = Story.create(title: "Something", content: "blah blah blah", jam_id: 1)
