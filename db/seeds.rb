user = User.create(username: 'guest', password: 'guest')

deck = Deck.create(name: 'Animal Facts')

answer1 = Answer.create(answer: 'Sailfish')
answer2 = Answer.create(answer: 'Millipede')
answer3 = Answer.create(answer: 'Kittens')

card1 = Card.create(deck: deck, question: "What is the fastest fish in the Ocean?", answer: answer1)
card1 = Card.create(deck: deck, question: "Which insect has the most legs?", answer: answer2)
card1 = Card.create(deck: deck, question: "What are baby beavers called?", answer: answer3)
