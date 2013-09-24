decks - title, location, image, cards, card categories, likes, user_id
cards - deck_id, title, location, image, description, category, season, url, comments, user_id
comments - card_id, user_id, title, description
likes - deck_id, card_id, user_id
voting - comment_id, user_id
user - name, [devise*], avatar, decks, cards, likes, comments, votes
