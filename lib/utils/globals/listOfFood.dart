List listOfFood = [
  biryaniList,
  choleBhatureList,
  cakeList,
  chineseDishesList,
  shakeList,
  pizzaList,
  lassiList,
  rollList,
  burgerList,
  pavBhajiList,
  samosaList,
  dhoklaList,
  kachoriList,
  momoList,
  pastaList,
  sandwichList,
  dosaList
];
List foodList = listOfFood.reversed.toList();

List biryaniList = [
  {
    'name': 'Hyderabadi Biryani',
    'price': 250,
    'rate': 4.5,
    'order': 1325,
    'img':'assets/images/biryani/biriyani_1.jpeg',
    'description':
    'Aromatic rice with tender chicken or mutton, infused with saffron and spices.',
  },
  {
    'name': 'Lucknowi Biryani',
    'price': 300,
    'rate': 4.2,
    'order': 327,
    'img':'assets/images/biryani/biriyani_2.jpeg',
    'description':
    'Slow-cooked basmati rice with fragrant mutton, rich in Awadhi spices.',
  },
  {
    'name': 'Kolkata Biryani',
    'price': 200,
    'rate': 4.0,
    'order': 100,
    'img':'assets/images/biryani/biriyani_3.jpeg',
    'description':
    'Traditional biryani with potatoes, eggs, and succulent chicken or mutton.',
  },
  {
    'name': 'Sindhi Biryani',
    'price': 280,
    'rate': 4.3,
    'order': 925,
    'img':'assets/images/biryani/biriyani_4.jpeg',
    'description':
    'Spicy rice dish layered with mutton or chicken, yogurt, and a variety of spices.',
  },
  {
    'name': 'Malabar Biryani',
    'price': 270,
    'rate': 4.6,
    'order': 100,
    'img':'assets/images/biryani/biriyani_5.jpeg',
    'description':
    'South Indian delicacy made with fragrant rice, coconut milk, and seafood.',
  },
  {
    'name': 'Vegetable Biryani',
    'price': 180,
    'rate': 4.1,
    'order': 200,
    'img':'assets/images/biryani/biriyani_6.jpeg',
    'description':
    'Flavorful rice cooked with mixed vegetables, nuts, and aromatic spices.',
  },
  {
    'name': 'Paneer Biryani',
    'price': 220,
    'rate': 4.4,
    'order': 350,
    'img':'assets/images/biryani/biriyani_7.jpeg',
    'description':
    'Rice dish made with succulent paneer (Indian cottage cheese), yogurt, and spices.',
  },
  {
    'name': 'Egg Biryani',
    'price': 190,
    'rate': 4.2,
    'order': 455,
    'img':'assets/images/biryani/biriyani_8.jpeg',
    'description':
    'Delicious biryani layered with boiled eggs, fragrant rice, and subtle spices.',
  },
  {
    'name': 'Keema Biryani',
    'price': 320,
    'rate': 4.3,
    'img':'assets/images/biryani/biriyani_9.jpeg',
    'description':
    'Savory rice preparation with minced meat, cooked to perfection with spices.',
  },
  {
    'name': 'Dindigul Biryani',
    'price': 300,
    'rate': 4.5,
    'order': 50,
    'img':'assets/images/biryani/biriyani_10.jpeg',
    'description':
    'Traditional Tamil Nadu biryani made with short-grain rice, tender mutton, and local spices.',
  },
  {
    'name': 'Ambur Biryani',
    'price': 250,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/biryani/biriyani_11.jpeg',
    'description': 'A famous biryani from Ambur, Tamil Nadu.'
  },
  {
    'name': 'Beef Biryani',
    'price': 290,
    'rate': 4.4,
    'order': 150,
    'img':'assets/images/biryani/biriyani_12.jpeg',
    'description': 'A hearty biryani made with tender beef.'
  },
  {
    'name': 'Fish Biryani',
    'price': 260,
    'rate': 4.3,
    'order': 130,
    'img':'assets/images/biryani/biriyani_13.jpeg',
    'description': 'A seafood biryani made with fresh fish.'
  },
  {
    'name': 'Prawn Biryani',
    'price': 280,
    'rate': 4.5,
    'order': 145,
    'img':'assets/images/biryani/biriyani_14.jpeg',
    'description': 'A seafood biryani made with juicy prawns.'
  },
  {
    'name': 'Mushroom Biryani',
    'price': 200,
    'rate': 4.1,
    'order': 455,
    'img':'assets/images/biryani/biriyani_15.jpeg',
    'description': 'A vegetarian biryani made with mushrooms.'
  },
  {
    'name': 'Soya Chunk Biryani',
    'price': 220,
    'rate': 4.0,
    'order': 147,
    'img':'assets/images/biryani/biriyani_16.jpeg',
    'description': 'A high-protein biryani with soya chunks.'
  },
  {
    'name': 'Kashmiri Biryani',
    'price': 270,
    'rate': 4.2,
    'order': 450,
    'img':'assets/images/biryani/biriyani_17.jpeg',
    'description': 'A fruity biryani with dried fruits and nuts.'
  },
  {
    'name': 'Chicken Biryani',
    'price': 250,
    'rate': 4.4,
    'order': 142,
    'img':'assets/images/biryani/biriyani_18.jpeg',
    'description': 'A classic biryani made with chicken pieces.'
  },
  {
    'name': 'Mutton Biryani',
    'price': 300,
    'rate': 4.6,
    'order': 64,
    'img':'assets/images/biryani/biriyani_19.jpeg',
    'description': 'A rich and flavorful biryani with mutton.'
  },
  {
    'name': 'Bombay Biryani',
    'price': 260,
    'rate': 4.3,
    'order': 50,
    'img':'assets/images/biryani/biriyani_20.jpeg',
    'description': 'A spicy biryani from Mumbai.'
  },
];
List choleBhatureList = [
  {
    'name': "Punjabi Chole Bhature",
    'price': 120,
    'rate': 4.8,
    'order': 99,
    'img':'assets/images/poori/Poori1.jpeg',
    'description': "Authentic Punjabi Chole Bhature with rich spices.",
  },
  {
    'name': "Amritsari Chole Bhature",
    'price': 150,
    'rate': 4.7,
    'order': 255,
    'img':'assets/images/poori/Poori2.jpeg',
    'description': "Famous Amritsari style with a tangy twist.",
  },
  {
    'name': "Delhi Chole Bhature",
    'price': 100,
    'rate': 4.5,
    'order': 81,
    'img':'assets/images/poori/Poori3.jpeg',
    'description': "Popular Delhi street food, crispy and delicious.",
  },
  {
    'name': "Mumbai Chole Bhature",
    'price': 110,
    'rate': 4.4,
    'order': 46,
    'img':'assets/images/poori/Poori4.jpeg',
    'description': "Mumbai style Chole Bhature with a unique flavor.",
  },
  {
    'name': "Spicy Chole Bhature",
    'price': 130,
    'rate': 4.6,
    'order': 875,
    'img':'assets/images/poori/Poori5.jpeg',
    'description': "Extra spicy Chole Bhature for spice lovers.",
  },
  {
    'name': "Paneer Chole Bhature",
    'price': 140,
    'rate': 4.5,
    'order': 55,
    'img':'assets/images/poori/Poori6.jpeg',
    'description': "Chole Bhature topped with paneer for added taste.",
  },
  {
    'name': "Aloo Chole Bhature",
    'price': 125,
    'rate': 4.3,
    'order': 89,
    'img':'assets/images/poori/Poori7.jpeg',
    'description': "Chole Bhature with a hint of aloo for extra flavor.",
  },
  {
    'name': "Chatpata Chole Bhature",
    'price': 135,
    'rate': 4.6,
    'order': 25,
    'img':'assets/images/poori/Poori8.jpeg',
    'description': "Tangy and spicy Chole Bhature, a street food delight.",
  },
  {
    'name': "Special Chole Bhature",
    'price': 160,
    'rate': 4.9,
    'order': 84,
    'img':'assets/images/poori/Poori9.jpeg',
    'description': "Special recipe with secret spices, a must-try.",
  },
  {
    'name': "Desi Chole Bhature",
    'price': 115,
    'rate': 4.2,
    'order': 650,
    'img':'assets/images/poori/Poori10.jpeg',
    'description': "Traditional Desi style Chole Bhature, simple and tasty.",
  },
  {
    'name': "Punjabi Chole Bhature",
    'price': 120,
    'rate': 4.8,
    'order': 99,
    'img':'assets/images/poori/Poori11.jpeg',
    'description': "Authentic Punjabi Chole Bhature with rich spices.",
  },
  {
    'name': "Amritsari Chole Bhature",
    'price': 150,
    'rate': 4.7,
    'order': 255,
    'img':'assets/images/poori/Poori12.jpeg',
    'description': "Famous Amritsari style with a tangy twist.",
  },
  {
    'name': "Delhi Chole Bhature",
    'price': 100,
    'rate': 4.5,
    'order': 81,
    'img':'assets/images/poori/Poori13.jpeg',
    'description': "Popular Delhi street food, crispy and delicious.",
  },
  {
    'name': "Mumbai Chole Bhature",
    'price': 110,
    'rate': 4.4,
    'order': 46,
    'img':'assets/images/poori/Poori14.jpeg',
    'description': "Mumbai style Chole Bhature with a unique flavor.",
  },
  {
    'name': "Spicy Chole Bhature",
    'price': 130,
    'rate': 4.6,
    'order': 875,
    'img':'assets/images/poori/Poori15.jpeg',
    'description': "Extra spicy Chole Bhature for spice lovers.",
  },
  {
    'name': "Paneer Chole Bhature",
    'price': 140,
    'rate': 4.5,
    'order': 55,
    'img':'assets/images/poori/Poori16.jpeg',
    'description': "Chole Bhature topped with paneer for added taste.",
  },
  {
    'name': "Aloo Chole Bhature",
    'price': 125,
    'rate': 4.3,
    'order': 89,
    'img':'assets/images/poori/Poori17.jpeg',
    'description': "Chole Bhature with a hint of aloo for extra flavor.",
  },
  {
    'name': "Chatpata Chole Bhature",
    'price': 135,
    'rate': 4.6,
    'order': 25,
    'img':'assets/images/poori/Poori18.jpeg',
    'description': "Tangy and spicy Chole Bhature, a street food delight.",
  },
  {
    'name': "Special Chole Bhature",
    'price': 160,
    'rate': 4.9,
    'order': 84,
    'img':'assets/images/poori/Poori19.jpeg',
    'description': "Special recipe with secret spices, a must-try.",
  },
  {
    'name': "Desi Chole Bhature",
    'price': 115,
    'rate': 4.2,
    'order': 650,
    'img':'assets/images/poori/Poori20.jpeg',
    'description': "Traditional Desi style Chole Bhature, simple and tasty.",
  },
];
List cakeList = [
  {
    "name": "Chocolate Cake",
    "price": 500,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/cake/cake1.jpeg',
    "description": "A rich and moist chocolate cake."
  },
  {
    "name": "Vanilla Cake",
    "price": 450,
    "rate": 4.2,
    'order': 45,
    'img':'assets/images/cake/cake2.jpeg',
    "description": "A classic vanilla-flavored cake."
  },
  {
    "name": "Red Velvet Cake",
    "price": 600,
    "rate": 4.7,
    'order': 250,
    'img':'assets/images/cake/cake3.jpeg',
    "description": "A delicious red velvet cake with cream cheese frosting."
  },
  {
    "name": "Black Forest Cake",
    "price": 550,
    "rate": 4.4,
    'order': 385,
    'img':'assets/images/cake/cake4.jpeg',
    "description": "A layered chocolate cake with cherries and whipped cream."
  },
  {
    "name": "Carrot Cake",
    "price": 500,
    "rate": 4.3,
    'order': 400,
    'img':'assets/images/cake/cake5.jpeg',
    "description": "A moist cake made with grated carrots and spices."
  },
  {
    "name": "Cheesecake",
    "price": 650,
    "rate": 4.8,
    'order': 1200,
    'img':'assets/images/cake/cake6.jpeg',
    "description": "A rich and creamy cheesecake with a graham cracker crust."
  },
  {
    "name": "Lemon Cake",
    "price": 450,
    "rate": 4.1,
    'order': 14,
    'img':'assets/images/cake/cake7.jpeg',
    "description": "A refreshing lemon-flavored cake."
  },
  {
    "name": "Strawberry Cake",
    "price": 550,
    "rate": 4.6,
    'order': 230,
    'img':'assets/images/cake/cake8.jpeg',
    "description": "A delightful cake with fresh strawberries."
  },
  {
    "name": "Pineapple Cake",
    "price": 500,
    "rate": 4.2,
    'order': 715,
    'img':'assets/images/cake/cake9.jpeg',
    "description": "A tropical pineapple-flavored cake."
  },
  {
    "name": "Marble Cake",
    "price": 480,
    "rate": 4.3,
    'order': 200,
    'img':'assets/images/cake/cake10.jpeg',
    "description":
    "A cake with a mix of vanilla and chocolate batter swirled together."
  },
  {
    "name": "Chocolate Cake",
    "price": 500,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/cake/cake11.jpeg',
    "description": "A rich and moist chocolate cake."
  },
  {
    "name": "Vanilla Cake",
    "price": 450,
    "rate": 4.2,
    'order': 45,
    'img':'assets/images/cake/cake12.jpeg',
    "description": "A classic vanilla-flavored cake."
  },
  {
    "name": "Red Velvet Cake",
    "price": 600,
    "rate": 4.7,
    'order': 250,
    'img':'assets/images/cake/cake13.jpeg',
    "description": "A delicious red velvet cake with cream cheese frosting."
  },
  {
    "name": "Black Forest Cake",
    "price": 550,
    "rate": 4.4,
    'order': 385,
    'img':'assets/images/cake/cake14.jpeg',
    "description": "A layered chocolate cake with cherries and whipped cream."
  },
  {
    "name": "Carrot Cake",
    "price": 500,
    "rate": 4.3,
    'order': 400,
    'img':'assets/images/cake/cake15.jpeg',
    "description": "A moist cake made with grated carrots and spices."
  },
  {
    "name": "Cheesecake",
    "price": 650,
    "rate": 4.8,
    'order': 1200,
    'img':'assets/images/cake/cake16.jpeg',
    "description": "A rich and creamy cheesecake with a graham cracker crust."
  },
  {
    "name": "Lemon Cake",
    "price": 450,
    "rate": 4.1,
    'order': 14,
    'img':'assets/images/cake/cake17.jpeg',
    "description": "A refreshing lemon-flavored cake."
  },
  {
    "name": "Strawberry Cake",
    "price": 550,
    "rate": 4.6,
    'order': 230,
    'img':'assets/images/cake/cake18.jpeg',
    "description": "A delightful cake with fresh strawberries."
  },
  {
    "name": "Pineapple Cake",
    "price": 500,
    "rate": 4.2,
    'order': 715,
    'img':'assets/images/cake/cake19.jpeg',
    "description": "A tropical pineapple-flavored cake."
  },
  {
    "name": "Marble Cake",
    "price": 480,
    "rate": 4.3,
    'order': 200,
    'img':'assets/images/cake/cake20.jpeg',
    "description":
    "A cake with a mix of vanilla and chocolate batter swirled together."
  },
];
List chineseDishesList = [
  {
    'name': 'Sweet and Sour Pork',
    'price': 350,
    'rate': 4.5,
    'order': 514,
    'img':'assets/images/chinese/chinese1.jpeg',
    'description': 'A popular Chinese dish with sweet and tangy flavors.',
  },
  {
    'name': 'Kung Pao Chicken',
    'price': 400,
    'rate': 4.7,
    'order': 100,
    'img':'assets/images/chinese/chinese2.jpeg',
    'description': 'Spicy, stir-fried chicken with peanuts and vegetables.',
  },
  {
    'name': 'Spring Rolls',
    'price': 150,
    'rate': 4.3,
    'order': 500,
    'img':'assets/images/chinese/chinese3.jpeg',
    'description': 'Crispy rolls filled with vegetables and meat.',
  },
  {
    'name': 'Ma Po Tofu',
    'price': 300,
    'rate': 4.4,
    'order': 485,
    'img':'assets/images/chinese/chinese4.jpeg',
    'description': 'Tofu in a spicy, savory sauce with minced meat.',
  },
  {
    'name': 'Peking Duck',
    'price': 800,
    'rate': 4.8,
    'img':'assets/images/chinese/chinese5.jpeg',
    'description': 'Crispy duck served with pancakes and hoisin sauce.',
  },
  {
    'name': 'Chow Mein',
    'price': 250,
    'rate': 4.2,
    'order': 632,
    'img':'assets/images/chinese/chinese6.jpeg',
    'description': 'Stir-fried noodles with vegetables and meat.',
  },
  {
    'name': 'Dumplings',
    'price': 200,
    'rate': 4.6,
    'order': 789,
    'img':'assets/images/chinese/chinese7.jpeg',
    'description': 'Steamed or fried pockets filled with meat or vegetables.',
  },
  {
    'name': 'Hot and Sour Soup',
    'price': 180,
    'rate': 4.1,
    'order': 159,
    'img':'assets/images/chinese/chinese8.jpeg',
    'description': 'A spicy and tangy soup with tofu and vegetables.',
  },
  {
    'name': 'General Tso\'s Chicken',
    'price': 350,
    'rate': 4.5,
    'order': 125,
    'img':'assets/images/chinese/chinese9.jpeg',
    'description': 'Deep-fried chicken in a sweet and spicy sauce.',
  },
  {
    'name': 'Fried Rice',
    'price': 220,
    'rate': 4.3,
    'order': 357,
    'img':'assets/images/chinese/chinese10.jpeg',
    'description': 'Rice stir-fried with vegetables, eggs, and meat.',
  },
  {
    'name': 'Sweet and Sour Pork',
    'price': 350,
    'rate': 4.5,
    'order': 514,
    'img':'assets/images/chinese/chinese11.jpeg',
    'description': 'A popular Chinese dish with sweet and tangy flavors.',
  },
  {
    'name': 'Kung Pao Chicken',
    'price': 400,
    'rate': 4.7,
    'order': 100,
    'img':'assets/images/chinese/chinese12.jpeg',
    'description': 'Spicy, stir-fried chicken with peanuts and vegetables.',
  },
  {
    'name': 'Spring Rolls',
    'price': 150,
    'rate': 4.3,
    'order': 500,
    'img':'assets/images/chinese/chinese13.jpeg',
    'description': 'Crispy rolls filled with vegetables and meat.',
  },
  {
    'name': 'Ma Po Tofu',
    'price': 300,
    'rate': 4.4,
    'order': 485,
    'img':'assets/images/chinese/chinese14.jpeg',
    'description': 'Tofu in a spicy, savory sauce with minced meat.',
  },
  {
    'name': 'Peking Duck',
    'price': 800,
    'rate': 4.8,
    'img':'assets/images/chinese/chinese15.jpeg',
    'description': 'Crispy duck served with pancakes and hoisin sauce.',
  },
  {
    'name': 'Chow Mein',
    'price': 250,
    'rate': 4.2,
    'order': 632,
    'img':'assets/images/chinese/chinese16.jpeg',
    'description': 'Stir-fried noodles with vegetables and meat.',
  },
  {
    'name': 'Dumplings',
    'price': 200,
    'rate': 4.6,
    'order': 789,
    'img':'assets/images/chinese/chinese17.jpeg',
    'description': 'Steamed or fried pockets filled with meat or vegetables.',
  },
  {
    'name': 'Hot and Sour Soup',
    'price': 180,
    'rate': 4.1,
    'order': 159,
    'img':'assets/images/chinese/chinese18.jpeg',
    'description': 'A spicy and tangy soup with tofu and vegetables.',
  },
  {
    'name': 'General Tso\'s Chicken',
    'price': 350,
    'rate': 4.5,
    'order': 125,
    'img':'assets/images/chinese/chinese19.jpeg',
    'description': 'Deep-fried chicken in a sweet and spicy sauce.',
  },
  {
    'name': 'Fried Rice',
    'price': 220,
    'rate': 4.3,
    'order': 357,
    'img':'assets/images/chinese/chinese20.jpeg',
    'description': 'Rice stir-fried with vegetables, eggs, and meat.',
  },
];
List shakeList = [
  {
    "name": "Chocolate Shake",
    "price": 120,
    "rate": 4.8,
    'order': 514,
    'img':'assets/images/shakes/Shakes1.jpeg',
    "description": "A rich and creamy chocolate shake."
  },
  {
    "name": "Strawberry Shake",
    "price": 110,
    "rate": 4.6,
    'order': 100,
    'img':'assets/images/shakes/Shakes2.jpeg',
    "description": "A sweet and fruity strawberry shake."
  },
  {
    "name": "Vanilla Shake",
    "price": 100,
    "rate": 4.5,
    'order': 150,
    'img':'assets/images/shakes/Shakes3.jpeg',
    "description": "A classic vanilla shake."
  },
  {
    "name": "Banana Shake",
    "price": 90,
    "rate": 4.4,
    'order': 130,
    'img':'assets/images/shakes/Shakes4.jpeg',
    "description": "A nutritious banana shake."
  },
  {
    "name": "Mango Shake",
    "price": 130,
    "rate": 4.7,
    'order': 45,
    'img':'assets/images/shakes/Shakes5.jpeg',
    "description": "A refreshing mango shake."
  },
  {
    "name": "Oreo Shake",
    "price": 150,
    "rate": 4.9,
    'order': 165,
    'img':'assets/images/shakes/Shakes6.jpeg',
    "description": "A delightful Oreo cookie shake."
  },
  {
    "name": "Blueberry Shake",
    "price": 140,
    "rate": 4.6,
    'order': 514,
    'img':'assets/images/shakes/Shakes7.jpeg',
    "description": "A tangy blueberry shake."
  },
  {
    "name": "Pineapple Shake",
    "price": 120,
    "rate": 4.5,
    'order': 48,
    'img':'assets/images/shakes/Shakes8.jpeg',
    "description": "A tropical pineapple shake."
  },
  {
    "name": "Peanut Butter Shake",
    "price": 150,
    "rate": 4.8,
    'order': 10,
    'img':'assets/images/shakes/Shakes9.jpeg',
    "description": "A creamy peanut butter shake."
  },
  {
    "name": "Coffee Shake",
    "price": 110,
    "rate": 4.6,
    'order': 63,
    'img':'assets/images/shakes/Shakes10.jpeg',
    "description": "A strong and energizing coffee shake."
  },
  {
    "name": "Mint Chocolate Shake",
    "price": 130,
    "rate": 4.7,
    'order': 514,
    'img':'assets/images/shakes/Shakes11.jpeg',
    "description": "A refreshing mint chocolate shake."
  },
  {
    "name": "Caramel Shake",
    "price": 140,
    "rate": 4.8,
    'img':'assets/images/shakes/Shakes12.jpeg',
    "description": "A sweet and rich caramel shake."
  },
  {
    "name": "Avocado Shake",
    "price": 160,
    "rate": 4.7,
    'order': 514,
    'img':'assets/images/shakes/Shakes13.jpeg',
    "description": "A healthy and creamy avocado shake."
  },
  {
    "name": "Matcha Shake",
    "price": 150,
    "rate": 4.7,
    'order': 15,
    'img':'assets/images/shakes/Shakes14.jpeg',
    "description": "A smooth and earthy matcha shake."
  },
  {
    "name": "Coconut Shake",
    "price": 120,
    "rate": 4.6,
    'order': 9,
    'img':'assets/images/shakes/Shakes15.jpeg',
    "description": "A refreshing coconut shake."
  },
  {
    "name": "Almond Shake",
    "price": 140,
    "rate": 4.7,
    'order': 514,
    'img':'assets/images/shakes/Shakes16.jpeg',
    "description": "A nutritious almond shake."
  },
  {
    "name": "Chia Seed Shake",
    "price": 160,
    "rate": 4.6,
    'order': 45,
    'img':'assets/images/shakes/Shakes17.jpeg',
    "description": "A healthy chia seed shake."
  },
  {
    "name": "Pumpkin Spice Shake",
    "price": 150,
    "rate": 4.8,
    'order': 33,
    'img':'assets/images/shakes/Shakes18.jpeg',
    "description": "A seasonal pumpkin spice shake."
  },
  {
    "name": "Raspberry Shake",
    "price": 140,
    "rate": 4.7,
    'order': 8,
    'img':'assets/images/shakes/Shakes19.jpeg',
    "description": "A tangy raspberry shake."
  },
  {
    "name": "Hazelnut Shake",
    "price": 160,
    "rate": 4.8,
    'order': 514,
    'img':'assets/images/shakes/Shakes20.jpeg',
    "description": "A rich and nutty hazelnut shake."
  },
];
List pizzaList = [
  {
    'name': 'Margherita',
    'price': 299,
    'rate': 4.5,
    'order': 150,
    'img':'assets/images/pizza/pizza1.jpg',
    'description': 'Classic delight with 100% real mozzarella cheese.',
  },
  {
    'name': 'Farmhouse',
    'price': 399,
    'rate': 4.7,
    'order': 145,
    'img':'assets/images/pizza/pizza2.jpeg',
    'description':
    'Delightful combination of onion, capsicum, tomato & grilled mushroom.',
  },
  {
    'name': 'Peppy Paneer',
    'price': 349,
    'rate': 4.6,
    'order': 231,
    'img':'assets/images/pizza/pizza3.jpg',
    'description': 'Chunky paneer with crisp capsicum and spicy red paprika.',
  },
  {
    'name': 'Veg Extravaganza',
    'price': 499,
    'rate': 4.8,
    'order': 1325,
    'img':'assets/images/pizza/pizza4.jpg',
    'description':
    'Black olives, capsicum, onion, grilled mushroom, corn, tomato, jalapeno & extra cheese.',
  },
  {
    'name': 'Chicken Dominator',
    'price': 549,
    'rate': 4.7,
    'order': 416,
    'img':'assets/images/pizza/pizza5.jpeg',
    'description':
    'Loaded with double pepper barbecue chicken, peri-peri chicken, chicken tikka & grilled chicken rashers.',
  },
  {
    'name': 'Mexican Green Wave',
    'price': 399,
    'rate': 4.5,
    'order': 153,
    'img':'assets/images/pizza/pizza6.jpeg',
    'description':
    'Mexican herbs sprinkled on onion, capsicum, tomato & jalapeno.',
  },
  {
    'name': 'Deluxe Veggie',
    'price': 399,
    'rate': 4.6,
    'order': 759,
    'img':'assets/images/pizza/pizza7.jpg',
    'description':
    'Veg delight - onion, capsicum, grilled mushroom, corn & paneer.',
  },
  {
    'name': 'Indi Tandoori Paneer',
    'price': 449,
    'rate': 4.7,
    'order': 486,
    'img':'assets/images/pizza/pizza8.jpeg',
    'description': 'Tandoori paneer with capsicum, red paprika & mint mayo.',
  },
  {
    'name': 'Chicken Fiesta',
    'price': 479,
    'rate': 4.8,
    'order': 164,
    'img':'assets/images/pizza/pizza9.jpeg',
    'description':
    'Grilled chicken rashers, peri-peri chicken, onion & capsicum.',
  },
  {
    'name': 'Veggie Paradise',
    'price': 369,
    'rate': 4.5,
    'order': 124,
    'img':'assets/images/pizza/pizza10.jpeg',
    'description': 'Golder corn, black olives, capsicum & red paprika.',
  },
  {
    'name': 'Margherita',
    'price': 299,
    'rate': 4.5,
    'order': 150,
    'img':'assets/images/pizza/pizza11.jpeg',
    'description': 'Classic delight with 100% real mozzarella cheese.',
  },
  {
    'name': 'Farmhouse',
    'price': 399,
    'rate': 4.7,
    'order': 145,
    'img':'assets/images/pizza/pizza12.jpeg',
    'description':
    'Delightful combination of onion, capsicum, tomato & grilled mushroom.',
  },
  {
    'name': 'Peppy Paneer',
    'price': 349,
    'rate': 4.6,
    'order': 231,
    'img':'assets/images/pizza/pizza13.jpeg',
    'description': 'Chunky paneer with crisp capsicum and spicy red paprika.',
  },
  {
    'name': 'Veg Extravaganza',
    'price': 499,
    'rate': 4.8,
    'order': 1325,
    'img':'assets/images/pizza/pizza14.jpeg',
    'description':
    'Black olives, capsicum, onion, grilled mushroom, corn, tomato, jalapeno & extra cheese.',
  },
  {
    'name': 'Chicken Dominator',
    'price': 549,
    'rate': 4.7,
    'order': 416,
    'img':'assets/images/pizza/pizza15.jpg',
    'description':
    'Loaded with double pepper barbecue chicken, peri-peri chicken, chicken tikka & grilled chicken rashers.',
  },
  {
    'name': 'Mexican Green Wave',
    'price': 399,
    'rate': 4.5,
    'order': 153,
    'img':'assets/images/pizza/pizza16.jpeg',
    'description':
    'Mexican herbs sprinkled on onion, capsicum, tomato & jalapeno.',
  },
  {
    'name': 'Deluxe Veggie',
    'price': 399,
    'rate': 4.6,
    'order': 759,
    'img':'assets/images/pizza/pizza17.jpeg',
    'description':
    'Veg delight - onion, capsicum, grilled mushroom, corn & paneer.',
  },
  {
    'name': 'Indi Tandoori Paneer',
    'price': 449,
    'rate': 4.7,
    'order': 486,
    'img':'assets/images/pizza/pizza18.jpeg',
    'description': 'Tandoori paneer with capsicum, red paprika & mint mayo.',
  },
  {
    'name': 'Chicken Fiesta',
    'price': 479,
    'rate': 4.8,
    'order': 164,
    'img':'assets/images/pizza/pizza19.jpeg',
    'description':
    'Grilled chicken rashers, peri-peri chicken, onion & capsicum.',
  },
  {
    'name': 'Veggie Paradise',
    'price': 369,
    'rate': 4.5,
    'order': 124,
    'img':'assets/images/pizza/pizza20.jpeg',
    'description': 'Golder corn, black olives, capsicum & red paprika.',
  },
];
List lassiList = [
  {
    "name": "Sweet Lassi",
    "price": 50,
    "rate": 4.5,
    'order': 150,
    'img':'assets/images/Lassi/Lassi1.jpeg',
    "description": "A traditional sweet lassi made with yogurt and sugar."
  },
  {
    "name": "Salted Lassi",
    "price": 45,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/Lassi/Lassi2.jpeg',
    "description": "A savory lassi with a hint of salt."
  },
  {
    "name": "Mango Lassi",
    "price": 60,
    "rate": 4.8,
    'order': 69,
    'img':'assets/images/Lassi/Lassi3.jpeg',
    "description": "A refreshing lassi blended with ripe mangoes."
  },
  {
    "name": "Rose Lassi",
    "price": 55,
    "rate": 4.3,
    'order': 46,
    'img':'assets/images/Lassi/Lassi4.jpeg',
    "description": "A fragrant lassi flavored with rose water."
  },
  {
    "name": "Mint Lassi",
    "price": 50,
    "rate": 4.1,
    'order': 55,
    'img':'assets/images/Lassi/Lassi5.jpeg',
    "description": "A cool and refreshing lassi with fresh mint."
  },
  {
    "name": "Chocolate Lassi",
    "price": 70,
    "rate": 4.7,
    'order': 13,
    'img':'assets/images/Lassi/Lassi6.jpeg',
    "description": "A delicious lassi mixed with rich chocolate."
  },
  {
    "name": "Strawberry Lassi",
    "price": 65,
    "rate": 4.6,
    'order': 150,
    'img':'assets/images/Lassi/Lassi7.jpeg',
    "description": "A fruity lassi made with fresh strawberries."
  },
  {
    "name": "Banana Lassi",
    "price": 55,
    "rate": 4.2,
    'order': 150,
    'img':'assets/images/Lassi/Lassi8.jpeg',
    "description": "A creamy lassi with blended bananas."
  },
  {
    "name": "Saffron Lassi",
    "price": 80,
    "rate": 4.9,
    'order': 180,
    'img':'assets/images/Lassi/Lassi9.jpeg',
    "description": "A luxurious lassi infused with saffron."
  },
  {
    "name": "Pineapple Lassi",
    "price": 60,
    "rate": 4.4,
    'order': 15,
    'img':'assets/images/Lassi/Lassi10.jpeg',
    "description": "A tropical lassi with pineapple flavor."
  },
  {
    "name": "Cardamom Lassi",
    "price": 55,
    "rate": 4.3,
    'order': 55,
    'img':'assets/images/Lassi/Lassi11.jpeg',
    "description": "A spiced lassi with a hint of cardamom."
  },
  {
    "name": "Blueberry Lassi",
    "price": 65,
    "rate": 4.5,
    'order': 200,
    'img':'assets/images/Lassi/Lassi12.jpeg',
    "description": "A refreshing lassi made with blueberries."
  },
  {
    "name": "Coconut Lassi",
    "price": 70,
    "rate": 4.6,
    'order': 10,
    'img':'assets/images/Lassi/Lassi13.jpeg',
    "description": "A tropical lassi with coconut milk."
  },
  {
    "name": "Papaya Lassi",
    "price": 50,
    "rate": 4.2,
    'order': 1503,
    'img':'assets/images/Lassi/Lassi14.jpeg',
    "description": "A healthy lassi with fresh papaya."
  },
  {
    "name": "Honey Lassi",
    "price": 55,
    "rate": 4.4,
    'order': 1450,
    'img':'assets/images/Lassi/Lassi15.jpeg',
    "description": "A sweet lassi with a touch of honey."
  },
  {
    "name": "Vanilla Lassi",
    "price": 60,
    "rate": 4.3,
    'order': 10,
    'img':'assets/images/Lassi/Lassi16.jpeg',
    "description": "A smooth lassi with vanilla flavor."
  },
  {
    "name": "Green Apple Lassi",
    "price": 65,
    "rate": 4.6,
    'order': 150,
    'img':'assets/images/Lassi/Lassi17.jpeg',
    "description": "A tangy lassi with green apple."
  },
  {
    "name": "Peach Lassi",
    "price": 70,
    "rate": 4.5,
    'order': 300,
    'img':'assets/images/Lassi/Lassi18.jpeg',
    "description": "A fruity lassi with fresh peaches."
  },
  {
    "name": "Fig Lassi",
    "price": 75,
    "rate": 4.7,
    'order': 150,
    'img':'assets/images/Lassi/Lassi19.jpeg',
    "description": "A nutritious lassi with dried figs."
  },
  {
    "name": "Blackberry Lassi",
    "price": 80,
    "rate": 4.8,
    'order': 30,
    'img':'assets/images/Lassi/Lassi20.jpeg',
    "description": "A delicious lassi with blackberries."
  },
];
List rollList = [
  {
    'name': 'Chicken Roll',
    'price': 150,
    'rate': 4.5,
    'order': 89,
    'img':'assets/images/Rolls/Rolls1.jpeg',
    'description': 'Spicy grilled chicken wrapped in a flatbread with veggies.'
  },
  {
    'name': 'Paneer Roll',
    'price': 120,
    'rate': 4.2,
    'order': 70,
    'img':'assets/images/Rolls/Rolls2.jpeg',
    'description': 'Delicious paneer tikka with fresh veggies in a wrap.'
  },
  {
    'name': 'Egg Roll',
    'price': 100,
    'rate': 4.0,
    'order': 45,
    'img':'assets/images/Rolls/Rolls3.jpeg',
    'description': 'Egg omelette wrapped with onions and sauces.'
  },
  {
    'name': 'Veg Roll',
    'price': 80,
    'rate': 4.1,
    'order': 50,
    'img':'assets/images/Rolls/Rolls4.jpeg',
    'description': 'Mixed vegetables cooked with spices and wrapped.'
  },
  {
    'name': 'Mutton Roll',
    'price': 200,
    'rate': 4.6,
    'order': 30,
    'img':'assets/images/Rolls/Rolls5.jpeg',
    'description': 'Tender mutton pieces with special spices in a flatbread.'
  },
  {
    'name': 'Fish Roll',
    'price': 180,
    'rate': 4.3,
    'order': 10,
    'img':'assets/images/Rolls/Rolls6.jpeg',
    'description': 'Fried fish fillets with a tangy sauce in a wrap.'
  },
  {
    'name': 'Beef Roll',
    'price': 220,
    'rate': 4.4,
    'order': 12,
    'img':'assets/images/Rolls/Rolls7.jpeg',
    'description': 'Juicy beef slices with caramelized onions and peppers.'
  },
  {
    'name': 'Mixed Veg Roll',
    'price': 90,
    'rate': 4.0,
    'order': 1325,
    'img':'assets/images/Rolls/Rolls8.jpeg',
    'description': 'A mix of seasonal veggies with flavorful spices.'
  },
  {
    'name': 'Cheese Roll',
    'price': 130,
    'rate': 4.1,
    'order': 100,
    'img':'assets/images/Rolls/Rolls9.jpeg',
    'description': 'Melted cheese with herbs and veggies in a wrap.'
  },
  {
    'name': 'Tandoori Chicken Roll',
    'price': 160,
    'rate': 4.5,
    'order': 250,
    'img':'assets/images/Rolls/Rolls10.jpeg',
    'description': 'Tandoori chicken pieces with mint chutney in a flatbread.'
  },
  {
    'name': 'Chicken Roll',
    'price': 150,
    'rate': 4.5,
    'order': 89,
    'img':'assets/images/Rolls/Rolls11.jpeg',
    'description': 'Spicy grilled chicken wrapped in a flatbread with veggies.'
  },
  {
    'name': 'Paneer Roll',
    'price': 120,
    'rate': 4.2,
    'order': 70,
    'img':'assets/images/Rolls/Rolls12.jpeg',
    'description': 'Delicious paneer tikka with fresh veggies in a wrap.'
  },
  {
    'name': 'Egg Roll',
    'price': 100,
    'rate': 4.0,
    'order': 45,
    'img':'assets/images/Rolls/Rolls13.jpeg',
    'description': 'Egg omelette wrapped with onions and sauces.'
  },
  {
    'name': 'Veg Roll',
    'price': 80,
    'rate': 4.1,
    'order': 50,
    'img':'assets/images/Rolls/Rolls14.jpeg',
    'description': 'Mixed vegetables cooked with spices and wrapped.'
  },
  {
    'name': 'Mutton Roll',
    'price': 200,
    'rate': 4.6,
    'order': 30,
    'img':'assets/images/Rolls/Rolls15.jpeg',
    'description': 'Tender mutton pieces with special spices in a flatbread.'
  },
  {
    'name': 'Fish Roll',
    'price': 180,
    'rate': 4.3,
    'order': 10,
    'img':'assets/images/Rolls/Rolls16.jpeg',
    'description': 'Fried fish fillets with a tangy sauce in a wrap.'
  },
  {
    'name': 'Beef Roll',
    'price': 220,
    'rate': 4.4,
    'order': 12,
    'img':'assets/images/Rolls/Rolls17.jpeg',
    'description': 'Juicy beef slices with caramelized onions and peppers.'
  },
  {
    'name': 'Mixed Veg Roll',
    'price': 90,
    'rate': 4.0,
    'order': 1325,
    'img':'assets/images/Rolls/Rolls18.jpeg',
    'description': 'A mix of seasonal veggies with flavorful spices.'
  },
  {
    'name': 'Cheese Roll',
    'price': 130,
    'rate': 4.1,
    'order': 100,
    'img':'assets/images/Rolls/Rolls19.jpeg',
    'description': 'Melted cheese with herbs and veggies in a wrap.'
  },
  {
    'name': 'Tandoori Chicken Roll',
    'price': 160,
    'rate': 4.5,
    'order': 250,
    'img':'assets/images/Rolls/Rolls20.jpeg',
    'description': 'Tandoori chicken pieces with mint chutney in a flatbread.'
  },
];
List pastaList = [
  {
    "name": "Spaghetti Carbonara",
    "price": 250,
    "rate": 4.5,
    'order': 46,
    'img':'assets/images/pasta/Pasta1.jpeg',
    "description": "Classic Italian pasta with creamy egg sauce and pancetta.",
  },
  {
    "name": "Penne Arrabbiata",
    "price": 200,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/pasta/Pasta2.jpeg',
    "description": "Spicy tomato sauce with garlic and red chili.",
  },
  {
    "name": "Fettuccine Alfredo",
    "price": 270,
    "rate": 4.4,
    'order': 478,
    'img':'assets/images/pasta/Pasta3.jpeg',
    "description": "Rich and creamy Alfredo sauce with Parmesan cheese.",
  },
  {
    "name": "Lasagna",
    "price": 300,
    "rate": 4.7,
    'order': 146,
    'img':'assets/images/pasta/Pasta4.jpeg',
    "description": "Layered pasta with meat, cheese, and tomato sauce.",
  },
  {
    "name": "Macaroni and Cheese",
    "price": 180,
    "rate": 4.3,
    'order': 345,
    'img':'assets/images/pasta/Pasta5.jpeg',
    "description": "Classic comfort food with creamy cheese sauce.",
  },
  {
    "name": "Pesto Pasta",
    "price": 240,
    "rate": 4.6,
    'order': 142,
    'img':'assets/images/pasta/Pasta6.jpeg',
    "description": "Fresh basil pesto sauce with pine nuts and Parmesan.",
  },
  {
    "name": "Baked Ziti",
    "price": 220,
    "rate": 4.5,
    'order': 145,
    'img':'assets/images/pasta/Pasta7.jpeg',
    "description": "Baked pasta with marinara sauce and melted cheese.",
  },
  {
    "name": "Ravioli",
    "price": 280,
    "rate": 4.4,
    'order': 100,
    'img':'assets/images/pasta/Pasta8.jpeg',
    "description": "Stuffed pasta pockets with cheese or meat filling.",
  },
  {
    "name": "Tortellini",
    "price": 260,
    "rate": 4.3,
    'order': 300,
    'img':'assets/images/pasta/Pasta9.jpeg',
    "description": "Ring-shaped pasta stuffed with cheese or meat.",
  },
  {
    "name": "Gnocchi",
    "price": 250,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/pasta/Pasta10.jpeg',
    "description": "Soft potato dumplings with tomato or cream sauce.",
  },
  {
    "name": "Spaghetti Carbonara",
    "price": 250,
    "rate": 4.5,
    'order': 46,
    'img':'assets/images/pasta/Pasta11.jpeg',
    "description": "Classic Italian pasta with creamy egg sauce and pancetta.",
  },
  {
    "name": "Penne Arrabbiata",
    "price": 200,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/pasta/Pasta12.jpeg',
    "description": "Spicy tomato sauce with garlic and red chili.",
  },
  {
    "name": "Fettuccine Alfredo",
    "price": 270,
    "rate": 4.4,
    'order': 478,
    'img':'assets/images/pasta/Pasta13.jpeg',
    "description": "Rich and creamy Alfredo sauce with Parmesan cheese.",
  },
  {
    "name": "Lasagna",
    "price": 300,
    "rate": 4.7,
    'order': 146,
    'img':'assets/images/pasta/Pasta14.jpeg',
    "description": "Layered pasta with meat, cheese, and tomato sauce.",
  },
  {
    "name": "Macaroni and Cheese",
    "price": 180,
    "rate": 4.3,
    'order': 345,
    'img':'assets/images/pasta/Pasta15.jpeg',
    "description": "Classic comfort food with creamy cheese sauce.",
  },
  {
    "name": "Pesto Pasta",
    "price": 240,
    "rate": 4.6,
    'order': 142,
    'img':'assets/images/pasta/Pasta16.jpeg',
    "description": "Fresh basil pesto sauce with pine nuts and Parmesan.",
  },
  {
    "name": "Baked Ziti",
    "price": 220,
    "rate": 4.5,
    'order': 145,
    'img':'assets/images/pasta/Pasta17.jpeg',
    "description": "Baked pasta with marinara sauce and melted cheese.",
  },
  {
    "name": "Ravioli",
    "price": 280,
    "rate": 4.4,
    'order': 100,
    'img':'assets/images/pasta/Pasta18.jpeg',
    "description": "Stuffed pasta pockets with cheese or meat filling.",
  },
  {
    "name": "Tortellini",
    "price": 260,
    "rate": 4.3,
    'order': 300,
    'img':'assets/images/pasta/Pasta19.jpeg',
    "description": "Ring-shaped pasta stuffed with cheese or meat.",
  },
  {
    "name": "Gnocchi",
    "price": 250,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/pasta/Pasta20.jpeg',
    "description": "Soft potato dumplings with tomato or cream sauce.",
  },
];
List sandwichList = [
  {
    'name': 'Club Sandwich',
    'price': 150,
    'rate': 4.5,
    'order': 12,
    'img':'assets/images/sandwich/Sandwich1.jpeg',
    'description': 'A delicious sandwich with chicken, bacon, and veggies.'
  },
  {
    'name': 'Veggie Delight',
    'price': 120,
    'rate': 4.2,
    'order': 345,
    'img':'assets/images/sandwich/Sandwich2.jpeg',
    'description': 'A healthy sandwich packed with fresh vegetables.'
  },
  {
    'name': 'BLT Sandwich',
    'price': 140,
    'rate': 4.3,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich3.jpeg',
    'description': 'A classic sandwich with bacon, lettuce, and tomato.'
  },
  {
    'name': 'Grilled Cheese',
    'price': 100,
    'rate': 4.6,
    'order': 45,
    'img':'assets/images/sandwich/Sandwich4.jpg',
    'description': 'A simple yet tasty grilled cheese sandwich.'
  },
  {
    'name': 'Chicken Caesar',
    'price': 160,
    'rate': 4.4,
    'order': 456,
    'img':'assets/images/sandwich/Sandwich5.jpeg',
    'description': 'A sandwich with grilled chicken and Caesar dressing.'
  },
  {
    'name': 'Ham and Cheese',
    'price': 130,
    'rate': 4.1,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich6.jpg',
    'description': 'A traditional sandwich with ham and cheese.'
  },
  {
    'name': 'Tuna Melt',
    'price': 140,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich7.jpg',
    'description': 'A sandwich with tuna salad and melted cheese.'
  },
  {
    'name': 'Egg Salad Sandwich',
    'price': 110,
    'rate': 4.3,
    'order': 43,
    'img':'assets/images/sandwich/Sandwich8.jpeg',
    'description': 'A sandwich with a creamy egg salad filling.'
  },
  {
    'name': 'Turkey Sandwich',
    'price': 150,
    'rate': 4.5,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich9.jpeg',
    'description': 'A sandwich with sliced turkey and fresh veggies.'
  },
  {
    'name': 'Roast Beef',
    'price': 170,
    'rate': 4.4,
    'order': 597,
    'img':'assets/images/sandwich/Sandwich10.jpeg',
    'description': 'A sandwich with tender roast beef and horseradish sauce.'
  },
  {
    'name': 'Club Sandwich',
    'price': 150,
    'rate': 4.5,
    'order': 12,
    'img':'assets/images/sandwich/Sandwich11.jpeg',
    'description': 'A delicious sandwich with chicken, bacon, and veggies.'
  },
  {
    'name': 'Veggie Delight',
    'price': 120,
    'rate': 4.2,
    'order': 345,
    'img':'assets/images/sandwich/Sandwich12.jpeg',
    'description': 'A healthy sandwich packed with fresh vegetables.'
  },
  {
    'name': 'BLT Sandwich',
    'price': 140,
    'rate': 4.3,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich13.jpeg',
    'description': 'A classic sandwich with bacon, lettuce, and tomato.'
  },
  {
    'name': 'Grilled Cheese',
    'price': 100,
    'rate': 4.6,
    'order': 45,
    'img':'assets/images/sandwich/Sandwich14.jpeg',
    'description': 'A simple yet tasty grilled cheese sandwich.'
  },
  {
    'name': 'Chicken Caesar',
    'price': 160,
    'rate': 4.4,
    'order': 456,
    'img':'assets/images/sandwich/Sandwich15.jpeg',
    'description': 'A sandwich with grilled chicken and Caesar dressing.'
  },
  {
    'name': 'Ham and Cheese',
    'price': 130,
    'rate': 4.1,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich16.jpeg',
    'description': 'A traditional sandwich with ham and cheese.'
  },
  {
    'name': 'Tuna Melt',
    'price': 140,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich17.jpeg',
    'description': 'A sandwich with tuna salad and melted cheese.'
  },
  {
    'name': 'Egg Salad Sandwich',
    'price': 110,
    'rate': 4.3,
    'order': 43,
    'img':'assets/images/sandwich/Sandwich18.jpeg',
    'description': 'A sandwich with a creamy egg salad filling.'
  },
  {
    'name': 'Turkey Sandwich',
    'price': 150,
    'rate': 4.5,
    'order': 100,
    'img':'assets/images/sandwich/Sandwich19.jpeg',
    'description': 'A sandwich with sliced turkey and fresh veggies.'
  },
  {
    'name': 'Roast Beef',
    'price': 170,
    'rate': 4.4,
    'order': 597,
    'img':'assets/images/sandwich/Sandwich20.jpeg',
    'description': 'A sandwich with tender roast beef and horseradish sauce.'
  },
];
List dosaList = [
  {
    'name': 'Plain Dosa',
    'price': 50,
    'rate': 4.5,
    'order': 12,
    'img':'assets/images/dosa/Dosa1.jpeg',
    'description': 'A simple, crispy dosa served with chutney and sambar.',
  },
  {
    'name': 'Masala Dosa',
    'price': 70,
    'rate': 4.7,
    'order': 122,
    'img':'assets/images/dosa/Dosa2.jpeg',
    'description': 'A dosa stuffed with spiced potato filling.',
  },
  {
    'name': 'Rava Dosa',
    'price': 60,
    'rate': 4.4,
    'order': 196,
    'img':'assets/images/dosa/Dosa3.jpeg',
    'description': 'A thin, crispy dosa made from semolina.',
  },
  {
    'name': 'Onion Dosa',
    'price': 65,
    'rate': 4.3,
    'order': 145,
    'img':'assets/images/dosa/Dosa4.jpeg',
    'description': 'A dosa topped with finely chopped onions.',
  },
  {
    'name': 'Cheese Dosa',
    'price': 80,
    'rate': 4.6,
    'order': 786,
    'img':'assets/images/dosa/Dosa5.jpeg',
    'description': 'A dosa filled with melted cheese.',
  },
  {
    'name': 'Mysore Masala Dosa',
    'price': 75,
    'rate': 4.8,
    'order': 1546,
    'img':'assets/images/dosa/Dosa6.jpeg',
    'description': 'A dosa with a spicy red chutney and potato filling.',
  },
  {
    'name': 'Paneer Dosa',
    'price': 90,
    'rate': 4.5,
    'order': 12,
    'img':'assets/images/dosa/Dosa7.jpeg',
    'description': 'A dosa stuffed with spiced paneer filling.',
  },
  {
    'name': 'Set Dosa',
    'price': 55,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/dosa/Dosa8.jpeg',
    'description': 'A set of soft, fluffy dosas served with chutney and sambar.',
  },
  {
    'name': 'Paper Dosa',
    'price': 70,
    'rate': 4.6,
    'order': 110,
    'img':'assets/images/dosa/Dosa9.jpeg',
    'description': 'An extra thin and crispy dosa.',
  },
  {
    'name': 'Spring Dosa',
    'price': 85,
    'rate': 4.7,
    'order': 120,
    'img':'assets/images/dosa/Dosa10.jpeg',
    'description': 'A dosa filled with a mixture of vegetables and noodles.',
  },
  {
    'name': 'Plain Dosa',
    'price': 50,
    'rate': 4.5,
    'order': 12,
    'img':'assets/images/dosa/Dosa11.jpeg',
    'description': 'A simple, crispy dosa served with chutney and sambar.',
  },
  {
    'name': 'Masala Dosa',
    'price': 70,
    'rate': 4.7,
    'order': 122,
    'img':'assets/images/dosa/Dosa12.jpeg',
    'description': 'A dosa stuffed with spiced potato filling.',
  },
  {
    'name': 'Rava Dosa',
    'price': 60,
    'rate': 4.4,
    'order': 196,
    'img':'assets/images/dosa/Dosa13.jpeg',
    'description': 'A thin, crispy dosa made from semolina.',
  },
  {
    'name': 'Onion Dosa',
    'price': 65,
    'rate': 4.3,
    'order': 145,
    'img':'assets/images/dosa/Dosa14.jpeg',
    'description': 'A dosa topped with finely chopped onions.',
  },
  {
    'name': 'Cheese Dosa',
    'price': 80,
    'rate': 4.6,
    'order': 786,
    'img':'assets/images/dosa/Dosa15.jpeg',
    'description': 'A dosa filled with melted cheese.',
  },
  {
    'name': 'Mysore Masala Dosa',
    'price': 75,
    'rate': 4.8,
    'order': 1546,
    'img':'assets/images/dosa/Dosa16.jpeg',
    'description': 'A dosa with a spicy red chutney and potato filling.',
  },
  {
    'name': 'Paneer Dosa',
    'price': 90,
    'rate': 4.5,
    'order': 12,
    'img':'assets/images/dosa/Dosa17.jpeg',
    'description': 'A dosa stuffed with spiced paneer filling.',
  },
  {
    'name': 'Set Dosa',
    'price': 55,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/dosa/Dosa18.jpeg',
    'description': 'A set of soft, fluffy dosas served with chutney and sambar.',
  },
  {
    'name': 'Paper Dosa',
    'price': 70,
    'rate': 4.6,
    'order': 110,
    'img':'assets/images/dosa/Dosa19.jpeg',
    'description': 'An extra thin and crispy dosa.',
  },
  {
    'name': 'Spring Dosa',
    'price': 85,
    'rate': 4.7,
    'order': 120,
    'img':'assets/images/dosa/Dosa20.jpeg',
    'description': 'A dosa filled with a mixture of vegetables and noodles.',
  },
];
List noodlesList = [
  {
    "name": "Ramen Noodles",
    "price": 150,
    "rate": 4.7,
    'order': 12,
    'img':'assets/images/noodles/noodle1.jpeg',
    "description": "Japanese wheat noodles served in a flavorful broth."
  },
  {
    "name": "Udon Noodles",
    "price": 180,
    "rate": 4.5,
    'order': 120,
    'img':'assets/images/noodles/noodle2.jpeg',
    "description": "Thick Japanese noodles made from wheat flour."
  },
  {
    "name": "Soba Noodles",
    "price": 170,
    "rate": 4.6,
    'order': 100,
    'img':'assets/images/noodles/noodle3.jpeg',
    "description": "Japanese noodles made from buckwheat flour."
  },
  {
    "name": "Lo Mein",
    "price": 200,
    "rate": 4.4,
    'order': 10,
    'img':'assets/images/noodles/noodle4.jpeg',
    "description": "Chinese noodles stir-fried with vegetables and protein."
  },
  {
    "name": "Chow Mein",
    "price": 190,
    "rate": 4.3,
    'order': 12,
    'img':'assets/images/noodles/noodle15.jpeg',
    "description": "Stir-fried noodles with vegetables and choice of protein."
  },
  {
    "name": "Pho Noodles",
    "price": 220,
    "rate": 4.8,
    'order': 122,
    'img':'assets/images/noodles/noodle6.jpeg',
    "description": "Vietnamese rice noodles served in a savory broth."
  },
  {
    "name": "Pad Thai",
    "price": 210,
    "rate": 4.7,
    'order': 125,
    'img':'assets/images/noodles/noodle7.jpeg',
    "description": "Thai stir-fried rice noodles with tamarind sauce."
  },
  {
    "name": "Glass Noodles",
    "price": 160,
    "rate": 4.2,
    'order': 200,
    'img':'assets/images/noodles/noodle8.jpeg',
    "description": "Clear noodles made from mung bean starch."
  },
  {
    "name": "Korean Japchae",
    "price": 230,
    "rate": 4.6,
    'order': 12,
    'img':'assets/images/noodles/noodle9.jpeg',
    "description": "Korean sweet potato starch noodles stir-fried with vegetables."
  },
  {
    "name": "Singapore Noodles",
    "price": 200,
    "rate": 4.5,
    'order': 15,
    'img':'assets/images/noodles/noodle10.jpeg',
    "description": "Stir-fried rice vermicelli noodles with curry flavor."
  },
  {
    "name": "Hokkien Noodles",
    "price": 210,
    "rate": 4.4,
    'order': 10,
    'img':'assets/images/noodles/noodle11.jpeg',
    "description": "Thick egg noodles in a rich soy-based sauce."
  },
  {
    "name": "Laksa Noodles",
    "price": 220,
    "rate": 4.7,
    'order': 250,
    'img':'assets/images/noodles/noodle12.jpeg',
    "description": "Spicy noodle soup with a coconut milk base."
  },
  {
    "name": "Dan Dan Noodles",
    "price": 190,
    "rate": 4.5,
    'order': 12,
    'img':'assets/images/noodles/noodle13.jpeg',
    "description": "Spicy Sichuan noodles with a savory peanut sauce."
  },
  {
    "name": "Yaki Udon",
    "price": 200,
    "rate": 4.4,
    'order': 12,
    'img':'assets/images/noodles/noodle14.jpeg',
    "description": "Japanese stir-fried thick noodles with vegetables."
  },
  {
    "name": "Mie Goreng",
    "price": 180,
    "rate": 4.3,
    'order': 124,
    'img':'assets/images/noodles/noodle15.jpeg',
    "description": "Indonesian stir-fried noodles with a sweet and savory sauce."
  },
  {
    "name": "Cantonese Noodles",
    "price": 210,
    "rate": 4.6,
    'order': 45,
    'img':'assets/images/noodles/noodle16.jpeg',
    "description": "Noodles stir-fried with a variety of meats and vegetables."
  },
  {
    "name": "Beef Chow Fun",
    "price": 220,
    "rate": 4.7,
    'order': 55,
    'img':'assets/images/noodles/noodle17.jpeg',
    "description": "Wide rice noodles stir-fried with beef and soy sauce."
  },
  {
    "name": "Pancit Canton",
    "price": 170,
    "rate": 4.5,
    'order': 110,
    'img':'assets/images/noodles/noodle18.jpeg',
    "description": "Filipino stir-fried egg noodles with soy sauce and vegetables."
  },
  {
    "name": "Mee Hoon",
    "price": 160,
    "rate": 4.3,
    'order': 12,
    'img':'assets/images/noodles/noodle19.jpeg',
    "description": "Thin rice noodles stir-fried with a light soy sauce."
  },
  {
    "name": "Char Kway Teow",
    "price": 200,
    "rate": 4.6,
    'order': 12,
    'img':'assets/images/noodles/noodle20.jpeg',
    "description": "Malaysian stir-fried flat rice noodles with prawns."
  },
];
List saladList = [
  {
    "name": "Caesar Salad",
    "price": 150,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/salad/Salad1.jpeg',
    "description": "A classic salad with romaine lettuce, croutons, and Caesar dressing."
  },
  {
    "name": "Greek Salad",
    "price": 130,
    "rate": 4.7,
    'order': 12,
    'img':'assets/images/salad/Salad2.jpeg',
    "description": "A traditional salad with cucumbers, tomatoes, olives, and feta cheese."
  },
  {
    "name": "Caprese Salad",
    "price": 140,
    "rate": 4.6,
    'order': 120,
    'img':'assets/images/salad/Salad3.jpeg',
    "description": "A simple salad with tomatoes, mozzarella, and basil."
  },
  {
    "name": "Cobb Salad",
    "price": 160,
    "rate": 4.8,
    'order': 200,
    'img':'assets/images/salad/Salad4.jpeg',
    "description": "A hearty salad with chicken, bacon, avocado, and blue cheese."
  },
  {
    "name": "Spinach Salad",
    "price": 120,
    "rate": 4.4,
    'order': 124,
    'img':'assets/images/salad/Salad5.jpeg',
    "description": "A healthy salad with fresh spinach, nuts, and berries."
  },
  {
    "name": "Fruit Salad",
    "price": 100,
    "rate": 4.3,
    'order': 350,
    'img':'assets/images/salad/Salad6.jpeg',
    "description": "A refreshing salad with a mix of fresh fruits."
  },
  {
    "name": "Pasta Salad",
    "price": 140,
    "rate": 4.5,
    'order': 12,
    'img':'assets/images/salad/Salad7.jpeg',
    "description": "A tasty salad with pasta, veggies, and Italian dressing."
  },
  {
    "name": "Quinoa Salad",
    "price": 150,
    "rate": 4.7,
    'order': 100,
    'img':'assets/images/salad/Salad8.jpeg',
    "description": "A protein-rich salad with quinoa, veggies, and a light vinaigrette."
  },
  {
    "name": "Chicken Salad",
    "price": 160,
    "rate": 4.6,
    'order': 12,
    'img':'assets/images/salad/Salad9.jpeg',
    "description": "A flavorful salad with chicken, greens, and a creamy dressing."
  },
  {
    "name": "Tuna Salad",
    "price": 150,
    "rate": 4.4,
    'order': 124,
    'img':'assets/images/salad/Salad10.jpeg',
    "description": "A classic salad with tuna, mayo, and celery."
  },
  {
    "name": "Egg Salad",
    "price": 120,
    "rate": 4.3,
    'order': 137,
    'img':'assets/images/salad/Salad11.jpeg',
    "description": "A creamy salad with chopped eggs and mayo."
  },
  {
    "name": "Garden Salad",
    "price": 100,
    "rate": 4.2,
    'order': 150,
    'img':'assets/images/salad/Salad12.jpeg',
    "description": "A fresh salad with mixed greens and vegetables."
  },
  {
    "name": "Bean Salad",
    "price": 130,
    "rate": 4.5,
    'order': 78,
    'img':'assets/images/salad/Salad13.jpeg',
    "description": "A protein-packed salad with a variety of beans."
  },
  {
    "name": "Waldorf Salad",
    "price": 150,
    "rate": 4.4,
    'order': 89,
    'img':'assets/images/salad/Salad14.jpeg',
    "description": "A fruit and nut salad with apples, grapes, and walnuts."
  },
  {
    "name": "Broccoli Salad",
    "price": 140,
    "rate": 4.6,
    'order': 124,
    'img':'assets/images/salad/Salad15.jpeg',
    "description": "A crunchy salad with broccoli, bacon, and a creamy dressing."
  },
  {
    "name": "Kale Salad",
    "price": 130,
    "rate": 4.3,
    'order': 12,
    'img':'assets/images/salad/Salad16.jpeg',
    "description": "A nutritious salad with kale, nuts, and a tangy dressing."
  },
  {
    "name": "Potato Salad",
    "price": 120,
    "rate": 4.2,
    'order': 14,
    'img':'assets/images/salad/Salad17.jpeg',
    "description": "A creamy salad with potatoes and mayo."
  },
  {
    "name": "Coleslaw",
    "price": 100,
    "rate": 4.1,
    'order': 10,
    'img':'assets/images/salad/Salad18.jpeg',
    "description": "A crunchy salad with shredded cabbage and a tangy dressing."
  },
  {
    "name": "Mediterranean Salad",
    "price": 150,
    "rate": 4.7,
    'order': 100,
    'img':'assets/images/salad/Salad19.jpeg',
    "description": "A flavorful salad with olives, feta, and a lemon vinaigrette."
  },
  {
    "name": "Taco Salad",
    "price": 160,
    "rate": 4.8,
    'order': 140,
    'img':'assets/images/salad/Salad20.jpeg',
    "description": "A hearty salad with taco meat, cheese, and a spicy dressing."
  },
];
List vadaList = [
  {
    "name": "Medu Vada",
    "price": 20,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/vada/Vada1.jpeg',
    "description": "A crispy and savory South Indian vada made from urad dal."
  },
  {
    "name": "Batata Vada",
    "price": 15,
    "rate": 4.3,
    'order': 10,
    'img':'assets/images/vada/Vada2.jpeg',
    "description": "A popular Maharashtrian snack made with mashed potatoes."
  },
  {
    "name": "Sabudana Vada",
    "price": 25,
    "rate": 4.4,
    'order': 12,
    'img':'assets/images/vada/Vada3.jpeg',
    "description": "A crispy and chewy vada made from tapioca pearls."
  },
  {
    "name": "Dal Vada",
    "price": 18,
    "rate": 4.2,
    'order': 200,
    'img':'assets/images/vada/Vada4.jpeg',
    "description": "A crunchy and spicy vada made from mixed lentils."
  },
  {
    "name": "Masala Vada",
    "price": 20,
    "rate": 4.1,
    'order': 100,
    'img':'assets/images/vada/Vada5.jpeg',
    "description": "A flavorful vada made with chana dal and spices."
  },
  {
    "name": "Rava Vada",
    "price": 22,
    "rate": 4.0,
    'order': 100,
    'img':'assets/images/vada/Vada6.jpeg',
    "description": "A crispy vada made from semolina and yogurt."
  },
  {
    "name": "Urad Dal Vada",
    "price": 20,
    "rate": 4.3,
    'order': 300,
    'img':'assets/images/vada/Vada7.jpeg',
    "description": "A classic South Indian vada made from urad dal batter."
  },
  {
    "name": "Parippu Vada",
    "price": 18,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/vada/Vada8.jpeg',
    "description": "A traditional Kerala vada made from toor dal and spices."
  },
  {
    "name": "Keerai Vada",
    "price": 25,
    "rate": 4.4,
    'order': 50,
    'img':'assets/images/vada/Vada9.jpeg',
    "description": "A nutritious vada made with spinach and lentils."
  },
  {
    "name": "Thayir Vada",
    "price": 28,
    "rate": 4.6,
    'order': 100,
    'img':'assets/images/vada/Vada10.jpeg',
    "description": "A delicious vada soaked in spiced yogurt."
  },
  {
    "name": "Methi Vada",
    "price": 22,
    "rate": 4.1,
    'order': 100,
    'img':'assets/images/vada/Vada11.jpeg',
    "description": "A flavorful vada made with fenugreek leaves and spices."
  },
  {
    "name": "Corn Vada",
    "price": 24,
    "rate": 4.3,
    'order': 1250,
    'img':'assets/images/vada/Vada12.jpeg',
    "description": "A crispy and tasty vada made with corn kernels."
  },
  {
    "name": "Palak Vada",
    "price": 25,
    "rate": 4.5,
    'order': 70,
    'img':'assets/images/vada/Vada13.jpeg',
    "description": "A healthy vada made with spinach and spices."
  },
  {
    "name": "Banana Flower Vada",
    "price": 30,
    "rate": 4.7,
    'order': 100,
    'img':'assets/images/vada/Vada14.jpeg',
    "description": "A unique vada made from banana flower and spices."
  },
  {
    "name": "Paneer Vada",
    "price": 35,
    "rate": 4.6,
    'order': 100,
    'img':'assets/images/vada/Vada15.jpeg',
    "description": "A rich and tasty vada made with paneer and spices."
  },
  {
    "name": "Sweet Potato Vada",
    "price": 20,
    "rate": 4.3,
    'order': 25,
    'img':'assets/images/vada/Vada16.jpeg',
    "description": "A slightly sweet and savory vada made with sweet potatoes."
  },
  {
    "name": "Moong Dal Vada",
    "price": 18,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/vada/Vada17.jpeg',
    "description": "A crispy vada made from moong dal and spices."
  },
  {
    "name": "Cabbage Vada",
    "price": 22,
    "rate": 4.1,
    'order': 100,
    'img':'assets/images/vada/Vada18.jpeg',
    "description": "A flavorful vada made with shredded cabbage and spices."
  },
  {
    "name": "Chickpea Vada",
    "price": 25,
    "rate": 4.4,
    'order': 100,
    'img':'assets/images/vada/Vada19.jpeg',
    "description": "A nutritious vada made from chickpeas and spices."
  },
  {
    "name": "Onion Vada",
    "price": 20,
    "rate": 4.0,
    'order': 245,
    'img':'assets/images/vada/Vada20.jpeg',
    "description": "A crispy vada made with sliced onions and spices."
  },
];
List burgerList = [
  {
    "name": "Classic Beef Burger",
    "price": 150,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/burger/burger1.jpg',
    "description": "A classic beef patty with lettuce, tomato, and cheese.",
  },
  {
    "name": "Chicken Burger",
    "price": 120,
    "rate": 4.2,
    'order': 59,
    'img':'assets/images/burger/burger2.jpg',
    "description": "Juicy chicken breast with lettuce and mayo.",
  },
  {
    "name": "Veggie Burger",
    "price": 100,
    "rate": 4.0,
    'order': 45,
    'img':'assets/images/burger/burger3.jpg',
    "description": "A delicious patty made with fresh vegetables.",
  },
  {
    "name": "Cheese Burger",
    "price": 130,
    "rate": 4.4,
    'order': 47,
    'img':'assets/images/burger/burger4.jpg',
    "description": "Beef patty with a double layer of melted cheese.",
  },
  {
    "name": "Bacon Burger",
    "price": 180,
    "rate": 4.6,
    'order': 62,
    'img':'assets/images/burger/burger5.jpeg',
    "description": "Beef patty topped with crispy bacon and cheese.",
  },
  {
    "name": "Fish Burger",
    "price": 140,
    "rate": 4.1,
    'order': 86,
    'img':'assets/images/burger/burger6.jpeg',
    "description": "Grilled fish fillet with tartar sauce.",
  },
  {
    "name": "Spicy Burger",
    "price": 160,
    "rate": 4.3,
    'order': 145,
    'img':'assets/images/burger/burger7.jpeg',
    "description": "Spicy beef patty with jalapenos and hot sauce.",
  },
  {
    "name": "Mushroom Swiss Burger",
    "price": 170,
    "rate": 4.5,
    'order': 789,
    'img':'assets/images/burger/burger8.jpeg',
    "description": "Beef patty topped with mushrooms and Swiss cheese.",
  },
  {
    "name": "BBQ Burger",
    "price": 150,
    "rate": 4.4,
    'order': 1250,
    'img':'assets/images/burger/burger9.jpeg',
    "description": "Beef patty with BBQ sauce and onion rings.",
  },
  {
    "name": "Double Decker Burger",
    "price": 200,
    "rate": 4.7,
    'order': 145,
    'img':'assets/images/burger/burger10.jpeg',
    "description": "Two beef patties stacked with cheese and bacon.",
  },
  {
    "name": "Classic Beef Burger",
    "price": 150,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/burger/burger11.jpeg',
    "description": "A classic beef patty with lettuce, tomato, and cheese.",
  },
  {
    "name": "Chicken Burger",
    "price": 120,
    "rate": 4.2,
    'order': 59,
    'img':'assets/images/burger/burger12.jpeg',
    "description": "Juicy chicken breast with lettuce and mayo.",
  },
  {
    "name": "Veggie Burger",
    "price": 100,
    "rate": 4.0,
    'order': 45,
    'img':'assets/images/burger/burger13.jpeg',
    "description": "A delicious patty made with fresh vegetables.",
  },
  {
    "name": "Cheese Burger",
    "price": 130,
    "rate": 4.4,
    'order': 47,
    'img':'assets/images/burger/burger14.jpeg',
    "description": "Beef patty with a double layer of melted cheese.",
  },
  {
    "name": "Bacon Burger",
    "price": 180,
    "rate": 4.6,
    'order': 62,
    'img':'assets/images/burger/burger15.jpeg',
    "description": "Beef patty topped with crispy bacon and cheese.",
  },
  {
    "name": "Fish Burger",
    "price": 140,
    "rate": 4.1,
    'order': 86,
    'img':'assets/images/burger/burger16.jpeg',
    "description": "Grilled fish fillet with tartar sauce.",
  },
  {
    "name": "Spicy Burger",
    "price": 160,
    "rate": 4.3,
    'order': 145,
    'img':'assets/images/burger/burger17.jpeg',
    "description": "Spicy beef patty with jalapenos and hot sauce.",
  },
  {
    "name": "Mushroom Swiss Burger",
    "price": 170,
    "rate": 4.5,
    'order': 789,
    'img':'assets/images/burger/burger18.jpeg',
    "description": "Beef patty topped with mushrooms and Swiss cheese.",
  },
  {
    "name": "BBQ Burger",
    "price": 150,
    "rate": 4.4,
    'order': 1250,
    'img':'assets/images/burger/burger19.jpeg',
    "description": "Beef patty with BBQ sauce and onion rings.",
  },
  {
    "name": "Double Decker Burger",
    "price": 200,
    "rate": 4.7,
    'order': 145,
    'img':'assets/images/burger/burger20.jpeg',
    "description": "Two beef patties stacked with cheese and bacon.",
  },
];
List pavBhajiList = [
  {
    "name": "Classic Pav Bhaji",
    "price": 150,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/pavbhaji/pavbhaji1.jpeg',
    "description": "A traditional blend of mashed vegetables and spices."
  },
  {
    "name": "Cheese Pav Bhaji",
    "price": 180,
    "rate": 4.7,
    'order': 53,
    'img':'assets/images/pavbhaji/Pavbhaji2.jpeg',
    "description": "Classic pav bhaji topped with generous amounts of cheese."
  },
  {
    "name": "Paneer Pav Bhaji",
    "price": 200,
    "rate": 4.6,
    'order': 56,
    'img':'assets/images/pavbhaji/Pavbhaji3.jpeg',
    "description": "Pav bhaji enriched with paneer cubes for extra flavor."
  },
  {
    "name": "Jain Pav Bhaji",
    "price": 160,
    "rate": 4.4,
    'order': 78,
    'img':'assets/images/pavbhaji/Pavbhaji4.jpeg',
    "description": "Pav bhaji made without onion, garlic, and potatoes."
  },
  {
    "name": "Khada Pav Bhaji",
    "price": 170,
    "rate": 4.3,
    'order': 562,
    'img':'assets/images/pavbhaji/Pavbhaji5.jpeg',
    "description": "Chunky version with slightly mashed vegetables."
  },
  {
    "name": "Butter Pav Bhaji",
    "price": 190,
    "rate": 4.8,
    'order': 125,
    'img':'assets/images/pavbhaji/Pavbhaji6.jpeg',
    "description": "Rich pav bhaji cooked with lots of butter for a creamy texture."
  },
  {
    "name": "Mumbai Pav Bhaji",
    "price": 140,
    "rate": 4.5,
    'order': 124,
    'img':'assets/images/pavbhaji/Pavbhaji7.jpeg',
    "description": "Authentic street-style pav bhaji from Mumbai."
  },
  {
    "name": "Tawa Pav Bhaji",
    "price": 175,
    "rate": 4.6,
    'order': 452,
    'img':'assets/images/pavbhaji/Pavbhaji8.jpeg',
    "description": "Pav bhaji cooked on a tawa for a unique flavor."
  },
  {
    "name": "Green Pav Bhaji",
    "price": 160,
    "rate": 4.4,
    'order': 148,
    'img':'assets/images/pavbhaji/Pavbhaji9.jpeg',
    "description": "A healthier version with green vegetables."
  },
  {
    "name": "Corn Pav Bhaji",
    "price": 180,
    "rate": 4.5,
    'order': 65,
    'img':'assets/images/pavbhaji/Pavbhaji10.jpeg',
    "description": "Pav bhaji with a twist of sweet corn."
  },
  {
    "name": "Classic Pav Bhaji",
    "price": 150,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/pavbhaji/Pavbhaji11.jpeg',
    "description": "A traditional blend of mashed vegetables and spices."
  },
  {
    "name": "Cheese Pav Bhaji",
    "price": 180,
    "rate": 4.7,
    'order': 53,
    'img':'assets/images/pavbhaji/Pavbhaji12.jpeg',
    "description": "Classic pav bhaji topped with generous amounts of cheese."
  },
  {
    "name": "Paneer Pav Bhaji",
    "price": 200,
    "rate": 4.6,
    'order': 56,
    'img':'assets/images/pavbhaji/Pavbhaji13.jpeg',
    "description": "Pav bhaji enriched with paneer cubes for extra flavor."
  },
  {
    "name": "Jain Pav Bhaji",
    "price": 160,
    "rate": 4.4,
    'order': 78,
    'img':'assets/images/pavbhaji/Pavbhaji14.jpeg',
    "description": "Pav bhaji made without onion, garlic, and potatoes."
  },
  {
    "name": "Khada Pav Bhaji",
    "price": 170,
    "rate": 4.3,
    'order': 562,
    'img':'assets/images/pavbhaji/Pavbhaji15.jpeg',
    "description": "Chunky version with slightly mashed vegetables."
  },
  {
    "name": "Butter Pav Bhaji",
    "price": 190,
    "rate": 4.8,
    'order': 125,
    'img':'assets/images/pavbhaji/Pavbhaji16.jpeg',
    "description": "Rich pav bhaji cooked with lots of butter for a creamy texture."
  },
  {
    "name": "Mumbai Pav Bhaji",
    "price": 140,
    "rate": 4.5,
    'order': 124,
    'img':'assets/images/pavbhaji/Pavbhaji17.jpeg',
    "description": "Authentic street-style pav bhaji from Mumbai."
  },
  {
    "name": "Tawa Pav Bhaji",
    "price": 175,
    "rate": 4.6,
    'order': 452,
    'img':'assets/images/pavbhaji/Pavbhaji18.jpeg',
    "description": "Pav bhaji cooked on a tawa for a unique flavor."
  },
  {
    "name": "Green Pav Bhaji",
    "price": 160,
    "rate": 4.4,
    'order': 148,
    'img':'assets/images/pavbhaji/Pavbhaji19.jpeg',
    "description": "A healthier version with green vegetables."
  },
  {
    "name": "Corn Pav Bhaji",
    "price": 180,
    "rate": 4.5,
    'order': 65,
    'img':'assets/images/pavbhaji/Pavbhaji20.jpeg',
    "description": "Pav bhaji with a twist of sweet corn."
  },
];
List samosaList = [
  {
    'name': 'Aloo Samosa',
    'price': 20,
    'rate': 4.5,
    'order': 200,
    'img':'assets/images/samosa/Samosa1.jpeg',
    'description': 'Classic samosa filled with spiced potatoes and peas.'
  },
  {
    'name': 'Paneer Samosa',
    'price': 30,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/samosa/Samosa2.jpeg',
    'description': 'Samosa stuffed with a mixture of paneer and spices.'
  },
  {
    'name': 'Keema Samosa',
    'price': 40,
    'rate': 4.8,
    'order': 89,
    'img':'assets/images/samosa/Samosa3.jpeg',
    'description': 'Samosa filled with minced meat and aromatic spices.'
  },
  {
    'name': 'Vegetable Samosa',
    'price': 25,
    'rate': 4.3,
    'order': 47,
    'img':'assets/images/samosa/Samosa4.jpeg',
    'description': 'Samosa packed with mixed vegetables and mild spices.'
  },
  {
    'name': 'Cheese Samosa',
    'price': 35,
    'rate': 4.7,
    'order': 456,
    'img':'assets/images/samosa/Samosa5.jpeg',
    'description': 'A modern twist with a cheesy filling.'
  },
  {
    'name': 'Chicken Samosa',
    'price': 40,
    'rate': 4.6,
    'order': 1230,
    'img':'assets/images/samosa/Samosa6.jpeg',
    'description': 'Samosa stuffed with spiced chicken mince.'
  },
  {
    'name': 'Palak Samosa',
    'price': 25,
    'rate': 4.1,
    'order': 100,
    'img':'assets/images/samosa/Samosa7.jpeg',
    'description': 'Samosa filled with spinach and spices.'
  },
  {
    'name': 'Mushroom Samosa',
    'price': 30,
    'rate': 4.4,
    'order': 150,
    'img':'assets/images/samosa/Samosa8.jpeg',
    'description': 'A savory samosa with a mushroom filling.'
  },
  {
    'name': 'Egg Samosa',
    'price': 35,
    'rate': 4.5,
    'order': 100,
    'img':'assets/images/samosa/Samosa9.jpeg',
    'description': 'Samosa with a spicy egg filling.'
  },
  {
    'name': 'Chocolate Samosa',
    'price': 50,
    'rate': 4.9,
    'order': 200,
    'img':'assets/images/samosa/Samosa10.jpeg',
    'description': 'A sweet samosa filled with melted chocolate.'
  },
  {
    'name': 'Aloo Samosa',
    'price': 20,
    'rate': 4.5,
    'order': 200,
    'img':'assets/images/samosa/Samosa11.jpeg',
    'description': 'Classic samosa filled with spiced potatoes and peas.'
  },
  {
    'name': 'Paneer Samosa',
    'price': 30,
    'rate': 4.2,
    'order': 100,
    'img':'assets/images/samosa/Samosa12.jpeg',
    'description': 'Samosa stuffed with a mixture of paneer and spices.'
  },
  {
    'name': 'Keema Samosa',
    'price': 40,
    'rate': 4.8,
    'order': 89,
    'img':'assets/images/samosa/Samosa13.jpeg',
    'description': 'Samosa filled with minced meat and aromatic spices.'
  },
  {
    'name': 'Vegetable Samosa',
    'price': 25,
    'rate': 4.3,
    'order': 47,
    'img':'assets/images/samosa/Samosa14.jpeg',
    'description': 'Samosa packed with mixed vegetables and mild spices.'
  },
  {
    'name': 'Cheese Samosa',
    'price': 35,
    'rate': 4.7,
    'order': 456,
    'img':'assets/images/samosa/Samosa15.jpeg',
    'description': 'A modern twist with a cheesy filling.'
  },
  {
    'name': 'Chicken Samosa',
    'price': 40,
    'rate': 4.6,
    'order': 1230,
    'img':'assets/images/samosa/Samosa16.jpeg',
    'description': 'Samosa stuffed with spiced chicken mince.'
  },
  {
    'name': 'Palak Samosa',
    'price': 25,
    'rate': 4.1,
    'order': 100,
    'img':'assets/images/samosa/Samosa17.jpeg',
    'description': 'Samosa filled with spinach and spices.'
  },
  {
    'name': 'Mushroom Samosa',
    'price': 30,
    'rate': 4.4,
    'order': 150,
    'img':'assets/images/samosa/Samosa18.jpeg',
    'description': 'A savory samosa with a mushroom filling.'
  },
  {
    'name': 'Egg Samosa',
    'price': 35,
    'rate': 4.5,
    'order': 100,
    'img':'assets/images/samosa/Samosa19.jpeg',
    'description': 'Samosa with a spicy egg filling.'
  },
  {
    'name': 'Chocolate Samosa',
    'price': 50,
    'rate': 4.9,
    'order': 200,
    'img':'assets/images/samosa/Samosa20.jpeg',
    'description': 'A sweet samosa filled with melted chocolate.'
  },
];
List dhoklaList = [
  {
    "name": "Khaman Dhokla",
    "price": 50,
    "rate": 4.5,
    'order': 145,
    'img':'assets/images/dhokla/Dhokla1.jpeg',
    "description": "Soft and fluffy, made from fermented rice and chickpea batter."
  },
  {
    "name": "Rasiya Dhokla",
    "price": 60,
    "rate": 4.2,
    'order': 152,
    'img':'assets/images/dhokla/Dhokla2.jpeg',
    "description": "Dhokla soaked in a tangy yogurt-based gravy."
  },
  {
    "name": "Khatta Dhokla",
    "price": 55,
    "rate": 4.3,
    'order': 453,
    'img':'assets/images/dhokla/Dhokla3.jpeg',
    "description": "Sour dhokla made from rice and chickpea flour with a tangy taste."
  },
  {
    "name": "Rava Dhokla",
    "price": 45,
    "rate": 4.0,
    'order': 1345,
    'img':'assets/images/dhokla/Dhokla4.jpeg',
    "description": "Dhokla made with semolina, tempered with mustard seeds."
  },
  {
    "name": "Sandwich Dhokla",
    "price": 65,
    "rate": 4.4,
    'order': 15,
    'img':'assets/images/dhokla/Dhokla5.jpeg',
    "description": "Layered dhokla with chutney filling, served as a sandwich."
  },
  {
    "name": "Toor Dal Dhokla",
    "price": 70,
    "rate": 4.6,
    'order': 754,
    'img':'assets/images/dhokla/Dhokla6.jpeg',
    "description": "Healthy dhokla made from split pigeon peas."
  },
  {
    "name": "Mixed Dal Dhokla",
    "price": 80,
    "rate": 4.7,
    'order': 145,
    'img':'assets/images/dhokla/Dhokla7.jpeg',
    "description": "Combination of various lentils, providing a unique flavor."
  },
  {
    "name": "Moong Dal Dhokla",
    "price": 50,
    "rate": 4.5,
    'order': 300,
    'img':'assets/images/dhokla/Dhokla8.jpeg',
    "description": "Light and healthy dhokla made from yellow split moong dal."
  },
  {
    "name": "Chana Dal Dhokla",
    "price": 55,
    "rate": 4.2,
    'order': 250,
    'img':'assets/images/dhokla/Dhokla9.jpeg',
    "description": "Traditional dhokla made from chana dal batter."
  },
  {
    "name": "Green Peas Dhokla",
    "price": 60,
    "rate": 4.3,
    'order': 784,
    'img':'assets/images/dhokla/Dhokla10.jpeg',
    "description": "Dhokla infused with green peas, providing a fresh taste."
  },
  {
    "name": "Khaman Dhokla",
    "price": 50,
    "rate": 4.5,
    'order': 145,
    'img':'assets/images/dhokla/Dhokla11.jpeg',
    "description": "Soft and fluffy, made from fermented rice and chickpea batter."
  },
  {
    "name": "Rasiya Dhokla",
    "price": 60,
    "rate": 4.2,
    'order': 152,
    'img':'assets/images/dhokla/Dhokla12.jpeg',
    "description": "Dhokla soaked in a tangy yogurt-based gravy."
  },
  {
    "name": "Khatta Dhokla",
    "price": 55,
    "rate": 4.3,
    'order': 453,
    'img':'assets/images/dhokla/Dhokla13.jpeg',
    "description": "Sour dhokla made from rice and chickpea flour with a tangy taste."
  },
  {
    "name": "Rava Dhokla",
    "price": 45,
    "rate": 4.0,
    'order': 1345,
    'img':'assets/images/dhokla/Dhokla14.jpeg',
    "description": "Dhokla made with semolina, tempered with mustard seeds."
  },
  {
    "name": "Sandwich Dhokla",
    "price": 65,
    "rate": 4.4,
    'order': 15,
    'img':'assets/images/dhokla/Dhokla15.jpeg',
    "description": "Layered dhokla with chutney filling, served as a sandwich."
  },
  {
    "name": "Toor Dal Dhokla",
    "price": 70,
    "rate": 4.6,
    'order': 754,
    'img':'assets/images/dhokla/Dhokla16.jpeg',
    "description": "Healthy dhokla made from split pigeon peas."
  },
  {
    "name": "Mixed Dal Dhokla",
    "price": 80,
    "rate": 4.7,
    'order': 145,
    'img':'assets/images/dhokla/Dhokla17.jpeg',
    "description": "Combination of various lentils, providing a unique flavor."
  },
  {
    "name": "Moong Dal Dhokla",
    "price": 50,
    "rate": 4.5,
    'order': 300,
    'img':'assets/images/dhokla/Dhokla18.jpeg',
    "description": "Light and healthy dhokla made from yellow split moong dal."
  },
  {
    "name": "Chana Dal Dhokla",
    "price": 55,
    "rate": 4.2,
    'order': 250,
    'img':'assets/images/dhokla/Dhokla19.jpeg',
    "description": "Traditional dhokla made from chana dal batter."
  },
  {
    "name": "Green Peas Dhokla",
    "price": 60,
    "rate": 4.3,
    'order': 784,
    'img':'assets/images/dhokla/Dhokla20.jpeg',
    "description": "Dhokla infused with green peas, providing a fresh taste."
  },
];
List kachoriList = [
  {
    "name": "Raj Kachori",
    "price": 50,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/kachori/kachori1.jpeg',
    "description": "A large kachori filled with a variety of tasty ingredients."
  },
  {
    "name": "Pyaaz Kachori",
    "price": 30,
    "rate": 4.3,
    'order': 145,
    'img':'assets/images/kachori/kachori2.jpeg',
    "description": "A spicy kachori filled with onions and spices."
  },
  {
    "name": "Mawa Kachori",
    "price": 40,
    "rate": 4.7,
    'order': 100,
    'img':'assets/images/kachori/kachori3.jpeg',
    "description": "A sweet kachori filled with mawa and dry fruits."
  },
  {
    "name": "Dal Kachori",
    "price": 25,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/kachori/kachori4.jpeg',
    "description": "A crunchy kachori filled with spiced lentils."
  },
  {
    "name": "Aloo Kachori",
    "price": 20,
    "rate": 4.1,
    'order': 200,
    'img':'assets/images/kachori/kachori5.jpeg',
    "description": "A delicious kachori filled with spiced mashed potatoes."
  },
  {
    "name": "Methi Kachori",
    "price": 35,
    "rate": 4.4,
    'order': 14,
    'img':'assets/images/kachori/kachori6.jpeg',
    "description": "A kachori filled with fenugreek leaves and spices."
  },
  {
    "name": "Moong Dal Kachori",
    "price": 28,
    "rate": 4.5,
    'order': 56,
    'img':'assets/images/kachori/kachori7.jpeg',
    "description": "A savory kachori filled with seasoned moong dal."
  },
  {
    "name": "Khasta Kachori",
    "price": 32,
    "rate": 4.3,
    'order': 23,
    'img':'assets/images/kachori/kachori8.jpeg',
    "description": "A flaky and crispy kachori filled with spiced mix."
  },
  {
    "name": "Dry Fruit Kachori",
    "price": 45,
    "rate": 4.6,
    'order': 48,
    'img':'assets/images/kachori/kachori9.jpeg',
    "description": "A rich kachori filled with a mix of dry fruits."
  },
  {
    "name": "Chana Dal Kachori",
    "price": 25,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/kachori/kachori10.jpeg',
    "description": "A crunchy kachori filled with spiced chana dal."
  },
  {
    "name": "Raj Kachori",
    "price": 50,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/kachori/kachori11.jpeg',
    "description": "A large kachori filled with a variety of tasty ingredients."
  },
  {
    "name": "Pyaaz Kachori",
    "price": 30,
    "rate": 4.3,
    'order': 145,
    'img':'assets/images/kachori/kachori12.jpeg',
    "description": "A spicy kachori filled with onions and spices."
  },
  {
    "name": "Mawa Kachori",
    "price": 40,
    "rate": 4.7,
    'order': 100,
    'img':'assets/images/kachori/kachori13.jpeg',
    "description": "A sweet kachori filled with mawa and dry fruits."
  },
  {
    "name": "Dal Kachori",
    "price": 25,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/kachori/kachori14.jpeg',
    "description": "A crunchy kachori filled with spiced lentils."
  },
  {
    "name": "Aloo Kachori",
    "price": 20,
    "rate": 4.1,
    'order': 200,
    'img':'assets/images/kachori/kachori15.jpeg',
    "description": "A delicious kachori filled with spiced mashed potatoes."
  },
  {
    "name": "Methi Kachori",
    "price": 35,
    "rate": 4.4,
    'order': 14,
    'img':'assets/images/kachori/kachori16.jpeg',
    "description": "A kachori filled with fenugreek leaves and spices."
  },
  {
    "name": "Moong Dal Kachori",
    "price": 28,
    "rate": 4.5,
    'order': 56,
    'img':'assets/images/kachori/kachori17.jpeg',
    "description": "A savory kachori filled with seasoned moong dal."
  },
  {
    "name": "Khasta Kachori",
    "price": 32,
    "rate": 4.3,
    'order': 23,
    'img':'assets/images/kachori/kachori18.jpeg',
    "description": "A flaky and crispy kachori filled with spiced mix."
  },
  {
    "name": "Dry Fruit Kachori",
    "price": 45,
    "rate": 4.6,
    'order': 48,
    'img':'assets/images/kachori/kachori19.jpeg',
    "description": "A rich kachori filled with a mix of dry fruits."
  },
  {
    "name": "Chana Dal Kachori",
    "price": 25,
    "rate": 4.2,
    'order': 100,
    'img':'assets/images/kachori/kachori20.jpeg',
    "description": "A crunchy kachori filled with spiced chana dal."
  },
];
List momoList = [
  {
    "name": "Steamed Chicken Momos",
    "price": 120,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/momos/Momos1.jpeg',
    "description": "Juicy chicken filling steamed to perfection."
  },
  {
    "name": "Veg Momos",
    "price": 100,
    "rate": 4.0,
    'order': 46,
    'img':'assets/images/momos/Momos2.jpeg',
    "description": "Healthy and delicious vegetarian momos."
  },
  {
    "name": "Fried Momos",
    "price": 130,
    "rate": 4.3,
    'order': 100,
    'img':'assets/images/momos/Momos3.jpeg',
    "description": "Crispy fried momos with spicy chutney."
  },
  {
    "name": "Paneer Momos",
    "price": 140,
    "rate": 4.4,
    'order': 48,
    'img':'assets/images/momos/Momos4.jpeg',
    "description": "Soft paneer filling in a steamed shell."
  },
  {
    "name": "Tandoori Momos",
    "price": 150,
    "rate": 4.6,
    'order': 241,
    'img':'assets/images/momos/Momos5.jpeg',
    "description": "Momos grilled in tandoor for a smoky flavor."
  },
  {
    "name": "Chocolate Momos",
    "price": 110,
    "rate": 4.2,
    'order': 230,
    'img':'assets/images/momos/Momos6.jpeg',
    "description": "Sweet momos filled with melted chocolate."
  },
  {
    "name": "Cheese Corn Momos",
    "price": 130,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/momos/Momos7.jpeg',
    "description": "Creamy cheese and corn stuffed momos."
  },
  {
    "name": "Pork Momos",
    "price": 160,
    "rate": 4.7,
    'order': 163,
    'img':'assets/images/momos/Momos8.jpeg',
    "description": "Succulent pork filling with herbs."
  },
  {
    "name": "Shrimp Momos",
    "price": 170,
    "rate": 4.8,
    'img':'assets/images/momos/Momos9.jpeg',
    "description": "Delicious shrimp filling for seafood lovers."
  },
  {
    "name": "Spinach Momos",
    "price": 120,
    "rate": 4.3,
    'order': 100,
    'img':'assets/images/momos/Momos10.jpeg',
    "description": "Healthy momos with spinach and cheese."
  },
  {
    "name": "Steamed Chicken Momos",
    "price": 120,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/momos/Momos11.jpeg',
    "description": "Juicy chicken filling steamed to perfection."
  },
  {
    "name": "Veg Momos",
    "price": 100,
    "rate": 4.0,
    'order': 46,
    'img':'assets/images/momos/Momos12.jpeg',
    "description": "Healthy and delicious vegetarian momos."
  },
  {
    "name": "Fried Momos",
    "price": 130,
    "rate": 4.3,
    'order': 100,
    'img':'assets/images/momos/Momos13.jpeg',
    "description": "Crispy fried momos with spicy chutney."
  },
  {
    "name": "Paneer Momos",
    "price": 140,
    "rate": 4.4,
    'order': 48,
    'img':'assets/images/momos/Momos14.jpeg',
    "description": "Soft paneer filling in a steamed shell."
  },
  {
    "name": "Tandoori Momos",
    "price": 150,
    "rate": 4.6,
    'order': 241,
    'img':'assets/images/momos/Momos15.jpeg',
    "description": "Momos grilled in tandoor for a smoky flavor."
  },
  {
    "name": "Chocolate Momos",
    "price": 110,
    "rate": 4.2,
    'order': 230,
    'img':'assets/images/momos/Momos16.jpeg',
    "description": "Sweet momos filled with melted chocolate."
  },
  {
    "name": "Cheese Corn Momos",
    "price": 130,
    "rate": 4.5,
    'order': 100,
    'img':'assets/images/momos/Momos17.jpeg',
    "description": "Creamy cheese and corn stuffed momos."
  },
  {
    "name": "Pork Momos",
    "price": 160,
    "rate": 4.7,
    'order': 163,
    'img':'assets/images/momos/Momos18.jpeg',
    "description": "Succulent pork filling with herbs."
  },
  {
    "name": "Shrimp Momos",
    "price": 170,
    "rate": 4.8,
    'img':'assets/images/momos/Momos19.jpeg',
    "description": "Delicious shrimp filling for seafood lovers."
  },
  {
    "name": "Spinach Momos",
    "price": 120,
    "rate": 4.3,
    'order': 100,
    'img':'assets/images/momos/Momos20.jpeg',
    "description": "Healthy momos with spinach and cheese."
  },
];