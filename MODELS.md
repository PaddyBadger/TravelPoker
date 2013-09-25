decks - title, location, image, user_id
cards - title, location, image, description, category_id, season_id, url, user_id
comments - card_id, user_id, title, description
likes - likeable_id, type, user_id
votes - comment_id, user_id, vote
user - name, [devise*], avatar
category - name, image
season - name