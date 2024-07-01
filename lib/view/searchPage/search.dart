import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});


  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, dynamic>> _allFoodList = [
    {
      'km': 'Athwa - 7.7 km',
      'add': 'Burger,Beverages,Pizzas',
      'name': '21% OFF',
      'img': 'assets/images/allFood/pizza8.jpeg',
      'off': 'UPTO ₹239',
      'rate': '1.2k (3)',
      'foodname': 'Veggie House',
      'duration': '15-20 mins',
    },
    {
      'km': 'Athwa - 7.7 km',
      'add': 'Cakes and Pastries, Bakery',
      'name': '21% OFF',
      'img': 'assets/images/offer/cake.jpeg',
      'off': 'UPTO ₹239',
      'rate': '1.2k (3)',
      'foodname': 'Sainath Live Cake',
      'duration': '15-20 mins',
    },
    {
      'add': 'Pizza Burger,snack',
      'name': '40% OFF',
      'off': 'ABOVE ₹189',
      'rate': '3.7k (100+)',
      'img': 'assets/images/allFood/pizza2.jpeg',
      'foodname': 'Food Context',
      'duration': '20-30 mins',
    },
    {
      'add': 'Gujarati, Vegetarian',
      'km': 'Nanpura - 2.3 km',
      'name': '32% OFF',
      'off': 'UPTO ₹115',
      'rate': '4.1k (270+)',
      'img': 'assets/images/allFood/dhokla7.jpg',
      'foodname': 'Pure Dhokla',
      'duration': '15-25 mins',
    },

    {
      'km': 'New Textile Market - 7.2 km',
      'add': 'Pizza, Desserts, Beverages',
      'name': '49% OFF',
      'off': 'ABOVE ₹239',
      'rate': '3.3k (1k+)',
      'img': 'assets/images/offer/pizza.jpg',
      'foodname': 'Pizza Castele',
      'duration': '20-30 mins',
    },
    {
      'add': 'Rajasthani, Street Food',
      'km': 'Athwa Gate - 5.5 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.8k (300+)',
      'img': 'assets/images/allFood/kachori1.jpeg',
      'foodname': 'Rajasthan Kachori',
      'duration': '20-30 mins',
    },
    {
      'add': 'Punjabi, North Indian, Paratha',
      'km': 'Sion - 2.2 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.4k (100+)',
      'img': 'assets/images/allFood/paratha_10.jpg',
      'foodname': 'Jassi De Parathe',
      'duration': '35-45 mins',
    },

    {
      'add': 'Chinese',
      'km': 'Salabatpura - 6.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹349',
      'rate': '4.7k (20+)',
      'img': 'assets/images/offer/chinese.jpeg',
      'foodname': 'Chinese',
      'duration': '25-35 mins',
    },
    {
      'add': 'Bakery, Snacks',
      'km': 'Ghod Dod Road - 3.6 km',
      'name': '20% OFF',
      'off': 'UPTO ₹150',
      'rate': '3.9k (200+)',
      'img': 'assets/images/allFood/cake3.jpeg',
      'foodname': 'Bakers Delight',
      'duration': '15-25 mins',
    },
    {
      'add': 'Snacks, Fast Food',
      'km': 'Sahara Darwaja - 4.8 km',
      'name': '38% OFF',
      'off': 'ABOVE ₹140',
      'rate': '4.0k (260+)',
      'img': 'assets/images/allFood/dhokla10.jpg',
      'foodname': 'Dhokla Bite',
      'duration': '25-35 mins',
    },
    {
      'add': 'Biryani',
      'name': '40% OFF',
      'off': 'ABOVE ₹189',
      'rate': '3.7k (100+)',
      'img': 'assets/images/offer/biryani.jpeg',
      'foodname': 'Tawakal Biryani \n   Center',
      'duration': '20-30 mins',
    },
    {
      'add': 'Street Food',
      'km': 'Dindoli - 1.6 km',
      'name': '44% OFF',
      'off': 'ABOVE ₹119',
      'rate': '2.5k (20)',
      'img': 'assets/images/offer/bhature.jpg',
      'foodname': 'Punjabi Dhaba',
      'duration': '40-50 mins',
    },
    {
      'add': 'Marathi, Street Food',
      'km': 'City Light - 3.2 km',
      'name': '45% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.3k (190+)',
      'img': 'assets/images/allFood/kachori6.jpeg',
      'foodname': 'Mumbai Kachori',
      'duration': '20-30 mins',
    },
    {
      'add': 'Street Food',
      'km': 'Udhna Gam - 3.9 km',
      'name': '43% OFF',
      'img': 'assets/images/offer/role.jpeg',
      'rate': '3.5k (1k+)',
      'off': 'ABOVE ₹349',
      'foodname': 'Madina Hotel',
      'duration': '40-45 mins',
    },
    {
      'add': 'Chinese, Paratha',
      'km': 'Salabatpura - 6.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹349',
      'rate': '4.7k (20+)',
      'img': 'assets/images/allFood/paratha_3.jpg',
      'foodname': 'Paratha Corner',
      'duration': '25-35 mins',
    },
    {
      'add': 'Biryani, Paratha',
      'km': 'Vesu - 4.8 km',
      'name': '40% OFF',
      'off': 'ABOVE ₹189',
      'rate': '3.7k (100+)',
      'img': 'assets/images/allFood/paratha_4.jpg',
      'foodname': 'Biryani & Paratha \n  Center',
      'duration': '20-30 mins',
    },

    {
      'km': 'Athwa - 7.7 km',
      'add': 'Cakes and Pastries, Bakery',
      'name': '21% OFF',
      'img': 'assets/images/offer/cake.jpeg',
      'off': 'UPTO ₹239',
      'rate': '1.2k (3)',
      'foodname': 'Sainath Live Cake',
      'duration': '15-20 mins',
    },
    {
      'add': 'Pizza Burger,italic,',
      'km': 'Sion - 2.2 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.4k (100+)',
      'img': 'assets/images/allFood/burger1.jpeg',
      'foodname': 'Broast N Rolls',
      'duration': '35-45 mins',
    },
    {
      'km': 'New Textile Market - 7.2 km',
      'add': 'Punjabi, Paratha, Lassi',
      'name': '49% OFF',
      'off': 'ABOVE ₹239',
      'rate': '3.3k (1k+)',
      'img': 'assets/images/allFood/paratha_1.jpg',
      'foodname': 'Paratha House',
      'duration': '20-30 mins',
    },

    {
      'add': 'Rajasthani, Street Food',
      'km': 'Ghod Dod Road - 3.5 km',
      'name': '30% OFF',
      'off': 'UPTO ₹150',
      'rate': '4.2k (200+)',
      'img': 'assets/images/allFood/kachori1.jpeg',
      'foodname': 'Jaipur Kachori',
      'duration': '25-35 mins',
    },
    {
      'add': 'Bakery, Pastries',
      'km': 'Nanpura - 2.4 km',
      'name': '32% OFF',
      'off': 'UPTO ₹140',
      'rate': '4.4k (270+)',
      'img': 'assets/images/allFood/cake7.jpeg',
      'foodname': 'Pastry Delight',
      'duration': '15-25 mins',
    },
    {
      'add': 'Gujarati, Fast Food',
      'km': 'Ring Road - 4.6 km',
      'name': '28% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.2k (230+)',
      'img': 'assets/images/allFood/dhokla6.jpg',
      'foodname': 'Dhokla Mania',
      'duration': '25-35 mins',
    },

    {
      'km': 'New Textile Market - 7.2 km',
      'add': 'Burger',
      'name': '49% OFF',
      'off': 'ABOVE ₹239',
      'rate': '3.3k (1k+)',
      'img': 'assets/images/allFood/burger2.jpeg',
      'foodname': 'Ajay',
      'duration': '20-30 mins',
    },

    {
      'km': 'Udhna Gam - 2.6 km',
      'add': 'Pizza,Burger',
      'name': '32% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.1k (100+)',
      'img': 'assets/images/allFood/pizza1.jpeg',
      'foodname': 'Abu Baba Pizza',
      'duration': '20-30 mins',
    },

    {
      'add': 'Bengali, Street Food',
      'km': 'Vesu - 6.8 km',
      'name': '25% OFF',
      'off': 'UPTO ₹130',
      'rate': '4.0k (180+)',
      'img': 'assets/images/allFood/kachori3.jpeg',
      'foodname': 'Bengali Kachori',
      'duration': '20-30 mins',
    },
    {
      'add': 'Snacks, Desserts',
      'km': 'Parle Point - 3.5 km',
      'name': '45% OFF',
      'off': 'UPTO ₹150',
      'rate': '4.7k (350+)',
      'img': 'assets/images/allFood/dhokla8.jpg',
      'foodname': 'Sweet & Spicy Dhokla',
      'duration': '30-40 mins',
    },
    {
      'add': 'Gujarati, Snacks',
      'km': 'Majura Gate - 2.9 km',
      'name': '50% OFF',
      'off': 'UPTO ₹160',
      'rate': '4.8k (400+)',
      'img': 'assets/images/allFood/dhokla9.jpg',
      'foodname': 'Dhokla Hub',
      'duration': '20-30 mins',
    },

    {
      'add': 'North Indian, Street Food',
      'km': 'Nanpura - 2.9 km',
      'name': '40% OFF',
      'off': 'UPTO ₹140',
      'rate': '4.5k (220+)',
      'img': 'assets/images/allFood/kachori4.jpeg',
      'foodname': 'Delhi Kachori',
      'duration': '25-35 mins',
    },
    {
      'add': 'McDonalds',
      'km': 'Salabatpura - 6.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹349',
      'rate': '4.7k (20+)',
      'img': 'assets/images/allFood/burger3.jpeg',
      'foodname': 'Burger,Beverages',
      'duration': '25-35 mins',
    },
    {
      'km': 'Athwa - 7.7 km',
      'add': 'Burger,Beverages,Pizzas',
      'name': '21% OFF',
      'img': 'assets/images/allFood/burger4.jpeg',
      'off': 'UPTO ₹239',
      'rate': '1.2k (3)',
      'foodname': 'Veggie House',
      'duration': '15-20 mins',
    },
    {
      'add': '',
      'km': 'Udhna Gam - 3.9 km',
      'name': '43% OFF',
      'img': 'assets/images/allFood/burger5.jpeg',
      'rate': '3.5k (1k+)',
      'off': 'ABOVE ₹349',
      'foodname': 'Burger Station',
      'duration': '40-45mins',
    },
    {
      'add': 'Pizza Burger,Fast,',
      'km': 'Sion - 2.2 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.4k (100+)',
      'img': 'assets/images/allFood/burger6.jpeg',
      'foodname': 'Burger House',
      'duration': '35-45 mins',
    },
    {
      'add': 'North Indian, Street Food',
      'km': 'Nanpura - 2.9 km',
      'name': '40% OFF',
      'off': 'UPTO ₹140',
      'rate': '4.5k (220+)',
      'img': 'assets/images/allFood/kachori4.jpeg',
      'foodname': 'Delhi Kachori',
      'duration': '25-35 mins',
    },
    {
      'km': 'Udhna Gam - 2.6 km',
      'add': 'Pizza,Burger',
      'name': '32% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.1k (100+)',
      'img': 'assets/images/allFood/pizza3.jpeg',
      'foodname': 'Abu Baba Pizza',
      'duration': '20-30 mins',
    },
    {
      'add': 'McDonalds',
      'km': 'Salabatpura - 6.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹349',
      'rate': '4.7k (20+)',
      'img': 'assets/images/allFood/burger7.jpeg',
      'foodname': 'Burger,Beverages',
      'duration': '25-35 mins',
    },
    {
      'add': 'Gujarati, Street Food',
      'km': 'Adajan - 5.1 km',
      'name': '35% OFF',
      'off': 'UPTO ₹120',
      'rate': '3.8k (150+)',
      'img': 'assets/images/allFood/kachori2.jpeg',
      'foodname': 'Surti Kachori',
      'duration': '30-40 mins',
    },
    {
      'add': 'Pizza Burger,italic,',
      'km': 'Sion - 2.2 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.4k (100+)',
      'img': 'assets/images/allFood/pizza4.jpeg',
      'foodname': 'Broast N Rolls',
      'duration': '35-45 mins',
    },
    {
      'km': 'New Textile Market - 7.2 km',
      'add': 'Burger',
      'name': '49% OFF',
      'off': 'ABOVE ₹239',
      'rate': '3.3k (1k+)',
      'img': 'assets/images/allFood/pizza5.jpeg',
      'foodname': 'Ajay',
      'duration': '20-30 mins',
    },
    {
      'add': 'Bakery, Desserts',
      'km': 'Vesu - 5.1 km',
      'name': '35% OFF',
      'off': 'UPTO ₹180',
      'rate': '4.3k (280+)',
      'img': 'assets/images/allFood/cake4.jpeg',
      'foodname': 'Cake Corner',
      'duration': '30-40 mins',
    },


    {
      'km': 'Udhna Gam - 2.6 km',
      'add': 'Pizza,Burger',
      'name': '32% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.1k (100+)',
      'img': 'assets/images/allFood/pizza6.jpeg',
      'foodname': 'Abu Baba Pizza',
      'duration': '20-30 mins',
    },
    {
      'add': 'McDonalds',
      'km': 'Salabatpura - 6.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹349',
      'rate': '4.7k (20+)',
      'img': 'assets/images/allFood/burger8.jpeg',
      'foodname': 'Burger,Beverages',
      'duration': '25-35 mins',
    },
    {
      'add': 'Bakery, Sweets',
      'km': 'Athwa - 3.2 km',
      'name': '40% OFF',
      'off': 'ABOVE ₹220',
      'rate': '4.6k (320+)',
      'img': 'assets/images/allFood/cake5.jpeg',
      'foodname': 'Sweet Tooth Bakery',
      'duration': '20-30 mins',
    },

    {
      'add': 'Pizza Burger,snack',
      'name': '40% OFF',
      'off': 'ABOVE ₹189',
      'rate': '3.7k (100+)',
      'img': 'assets/images/allFood/pizza7.jpeg',
      'foodname': 'Food Context',
      'duration': '20-30 mins',
    },

    {
      'add': 'Pizza Burger,Fast,',
      'km': 'Sion - 2.2 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.4k (100+)',
      'img': 'assets/images/allFood/burger9.jpeg',
      'foodname': 'Burger House',
      'duration': '35-45 mins',
    },
    {
      'add': 'Bakery, Desserts',
      'km': 'Parle Point - 3.9 km',
      'name': '45% OFF',
      'off': 'UPTO ₹210',
      'rate': '4.7k (350+)',
      'img': 'assets/images/allFood/cake8.jpeg',
      'foodname': 'Cake World',
      'duration': '30-40 mins',
    },

    {
      'add': 'McDonalds',
      'km': 'Salabatpura - 6.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹349',
      'rate': '4.7k (20+)',
      'img': 'assets/images/allFood/burger10.jpeg',
      'foodname': 'Burger,Beverages',
      'duration': '25-35 mins',
    },



    //paratha



    {
      'km': 'Udhna Gam - 2.6 km',
      'add': 'Bihari, Paratha, Fast Food',
      'name': '32% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.1k (100+)',
      'img': 'assets/images/allFood/paratha_2.jpg',
      'foodname': 'Riya Ka Kitchen',
      'duration': '20-30 mins',
    },


    {
      'add': 'Street Food, Paratha',
      'km': 'Dindoli - 1.6 km',
      'name': '44% OFF',
      'off': 'ABOVE ₹119',
      'rate': '2.5k (20)',
      'img': 'assets/images/allFood/paratha_5.jpg',
      'foodname': 'Punjabi Dhaba',
      'duration': '40-50 mins',
    },
    {
      'km': 'Athwa - 7.7 km',
      'add': 'Cakes and Pastries,Paratha',
      'name': '21% OFF',
      'img': 'assets/images/allFood/paratha_6.jpg',
      'off': 'UPTO ₹239',
      'rate': '1.2k (3)',
      'foodname': 'Sainath Live \n  Paratha',
      'duration': '15-20 mins',
    },
    {
      'add': 'Desserts, Bakery',
      'km': 'Ring Road - 4.8 km',
      'name': '28% OFF',
      'off': 'UPTO ₹160',
      'rate': '4.1k (230+)',
      'img': 'assets/images/allFood/cake6.jpeg',
      'foodname': 'Dessert Haven',
      'duration': '25-35 mins',
    },
    {
      'add': 'Street Food, Paratha',
      'km': 'Udhna Gam - 3.9 km',
      'name': '43% OFF',
      'img': 'assets/images/allFood/paratha_7.jpg',
      'rate': '3.5k (1k+)',
      'off': 'ABOVE ₹349',
      'foodname': 'Madina Hotel',
      'duration': '40-45 mins',
    },
    {
      'add': 'South Indian, Paratha',
      'km': 'Nanpura - 5.5 km',
      'name': '35% OFF',
      'off': 'UPTO ₹150',
      'rate': '2.8k (50+)',
      'img': 'assets/images/allFood/paratha_8.jpg',
      'foodname': 'South Paratha House',
      'duration': '30-40 mins',
    },
    {
      'add': 'Gujarati, Snacks',
      'km': 'City Light - 2.5 km',
      'name': '25% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.6k (300+)',
      'img': 'assets/images/allFood/dhokla1.jpg',
      'foodname': 'Surti Dhokla House',
      'duration': '20-30 mins',
    },
    {
      'add': 'Mexican, Paratha',
      'km': 'Adajan - 6.9 km',
      'name': '38% OFF',
      'off': 'ABOVE ₹200',
      'rate': '3.9k (200+)',
      'img': 'assets/images/allFood/paratha_9.jpg',
      'foodname': 'Mexican Paratha Hub',
      'duration': '25-35 mins',
    },


    //kachori



    {
      'add': 'South Indian, Street Food',
      'km': 'Parle Point - 4.4 km',
      'name': '33% OFF',
      'off': 'UPTO ₹170',
      'rate': '4.0k (160+)',
      'img': 'assets/images/allFood/kachori7.jpeg',
      'foodname': 'Madras Kachori',
      'duration': '30-40 mins',
    },
    {
      'add': 'Street Food, Snacks',
      'km': 'Majura Gate - 2.1 km',
      'name': '28% OFF',
      'off': 'UPTO ₹180',
      'rate': '4.6k (250+)',
      'img': 'assets/images/allFood/kachori8.jpeg',
      'foodname': 'Bombay Kachori',
      'duration': '15-25 mins',
    },
    {
      'add': 'Street Food',
      'km': 'Sahara Darwaja - 3.9 km',
      'name': '38% OFF',
      'off': 'UPTO ₹190',
      'rate': '4.4k (210+)',
      'img': 'assets/images/allFood/kachori9.jpeg',
      'foodname': 'Spicy Kachori',
      'duration': '25-35 mins',
    },
    {
      'add': 'Snacks, Beverages',
      'km': 'Athwa - 3.7 km',
      'name': '40% OFF',
      'off': 'ABOVE ₹130',
      'rate': '4.5k (320+)',
      'img': 'assets/images/allFood/dhokla5.jpg',
      'foodname': 'Healthy Dhokla',
      'duration': '20-30 mins',
    },



    //cake

    {
      'add': 'Bakery, Desserts',
      'km': 'City Light - 2.8 km',
      'name': '25% OFF',
      'off': 'UPTO ₹200',
      'rate': '4.5k (300+)',
      'img': 'assets/images/allFood/cake1.jpeg',
      'foodname': 'Sweet Treats Bakery',
      'duration': '20-30 mins',
    },


    //dhokla

    {
      'add': 'Snacks, Fast Food',
      'km': 'Adajan - 4.1 km',
      'name': '30% OFF',
      'off': 'ABOVE ₹150',
      'rate': '4.3k (250+)',
      'img': 'assets/images/allFood/dhokla2.jpg',
      'foodname': 'Dhokla Express',
      'duration': '25-35 mins',
    },
    {
      'add': 'Rajasthani, Street Food',
      'km': 'Athwa Gate - 5.5 km',
      'name': '50% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.8k (300+)',
      'img': 'assets/images/allFood/kachori3.jpeg',
      'foodname': 'Rajasthan Kachori',
      'duration': '20-30 mins',
    },
    {
      'add': 'Gujarati, Vegetarian',
      'km': 'Ghod Dod Road - 3.2 km',
      'name': '20% OFF',
      'off': 'UPTO ₹120',
      'rate': '4.0k (200+)',
      'img': 'assets/images/allFood/dhokla3.jpg',
      'foodname': 'Traditional Dhokla',
      'duration': '15-25 mins',
    },
    {
      'add': 'Pastries, Desserts',
      'km': 'Adajan - 4.3 km',
      'name': '30% OFF',
      'off': 'ABOVE ₹250',
      'rate': '4.2k (250+)',
      'img': 'assets/images/allFood/cake2.jpeg',
      'foodname': 'Pastry Palace',
      'duration': '25-35 mins',
    },

    {
      'add': 'Gujarati, Snacks',
      'km': 'Vesu - 5.0 km',
      'name': '35% OFF',
      'off': 'UPTO ₹140',
      'rate': '4.4k (280+)',
      'img': 'assets/images/allFood/dhokla4.jpg',
      'foodname': 'Dhokla Delight',
      'duration': '30-40 mins',
    },

    //lassi
    {
      'add': 'Punjabi, Beverages',
      'km': 'City Light - 3.1 km',
      'name': '20% OFF',
      'off': 'UPTO ₹90',
      'rate': '4.5k (250+)',
      'img': 'assets/images/allFood/lassi1.jpeg',
      'foodname': 'Punjabi Lassi House',
      'duration': '15-25 mins',
    },
    {
      'add': 'Beverages, Desserts',
      'km': 'Adajan - 4.5 km',
      'name': '25% OFF',
      'off': 'ABOVE ₹120',
      'rate': '4.2k (200+)',
      'img': 'assets/images/allFood/lassi2.jpeg',
      'foodname': 'Lassi Treat',
      'duration': '20-30 mins',
    },
    {
      'add': 'Snacks, Beverages',
      'km': 'Ghod Dod Road - 2.9 km',
      'name': '30% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.0k (180+)',
      'img': 'assets/images/allFood/lassi3.jpeg',
      'foodname': 'Lassi Corner',
      'duration': '10-20 mins',
    },
    {
      'add': 'Punjabi, Beverages',
      'km': 'Vesu - 5.3 km',
      'name': '35% OFF',
      'off': 'UPTO ₹130',
      'rate': '4.3k (220+)',
      'img': 'assets/images/allFood/lassi4.jpeg',
      'foodname': 'Delicious Lassi',
      'duration': '20-30 mins',
    },
    {
      'add': 'Beverages, Snacks',
      'km': 'Athwa - 3.0 km',
      'name': '40% OFF',
      'off': 'ABOVE ₹150',
      'rate': '4.6k (270+)',
      'img': 'assets/images/allFood/lassi5.jpeg',
      'foodname': 'Fresh Lassi',
      'duration': '15-25 mins',
    },
    {
      'add': 'Punjabi, Desserts',
      'km': 'Ring Road - 4.2 km',
      'name': '28% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.1k (190+)',
      'img': 'assets/images/allFood/lassi6.jpeg',
      'foodname': 'Sweet Lassi',
      'duration': '20-30 mins',
    },
    {
      'add': 'Beverages, Desserts',
      'km': 'Nanpura - 3.6 km',
      'name': '32% OFF',
      'off': 'UPTO ₹140',
      'rate': '4.4k (210+)',
      'img': 'assets/images/allFood/lassi7.jpeg',
      'foodname': 'Cool Lassi',
      'duration': '15-25 mins',
    },
    {
      'add': 'Punjabi, Snacks',
      'km': 'Parle Point - 3.4 km',
      'name': '45% OFF',
      'off': 'UPTO ₹125',
      'rate': '4.7k (300+)',
      'img': 'assets/images/allFood/lassi8.jpeg',
      'foodname': 'Tasty Lassi',
      'duration': '25-35 mins',
    },
    {
      'add': 'Snacks, Beverages',
      'km': 'Majura Gate - 2.5 km',
      'name': '50% OFF',
      'off': 'UPTO ₹160',
      'rate': '4.8k (350+)',
      'img': 'assets/images/allFood/lassi9.jpeg',
      'foodname': 'Lassi Hub',
      'duration': '15-25 mins',
    },


    {
      'add': 'Hyderabadi Biryani, Beverages',
      'km': 'Majura Gate - 2.5 km',
      'name': '50% OFF',
      'off': 'UPTO ₹160',
      'rate': '4.8k (350+)',
      'img': 'assets/images/allFood/biriyani1.jpeg',
      'foodname': 'Hyderabadi Biryani',
      'duration': '15-25 mins',
    },
    {
      'add': 'Kolkata Biryani, Desserts',
      'km': 'Adajan - 3.2 km',
      'name': '40% OFF',
      'off': 'UPTO ₹140',
      'rate': '3.6k (250+)',
      'img': 'assets/images/allFood/biriyani2.jpeg',
      'foodname': 'Kolkata Biryani',
      'duration': '20-30 mins',
    },
    {
      'add': 'Lucknowi Biryani, Beverages',
      'km': 'Nanpura - 4.0 km',
      'name': '45% OFF',
      'off': 'UPTO ₹150',
      'rate': '4.2k (300+)',
      'img': 'assets/images/allFood/biriyani3.jpeg',
      'foodname': 'Lucknowi Biryani',
      'duration': '25-35 mins',
    },
    {
      'add': 'Mumbai Biryani, Snacks',
      'km': 'Rander - 1.8 km',
      'name': '35% OFF',
      'off': 'UPTO ₹120',
      'rate': '3.9k (200+)',
      'img': 'assets/images/allFood/biriyani4.jpeg',
      'foodname': 'Mumbai Biryani',
      'duration': '10-20 mins',
    },
    {
      'add': 'Andhra Biryani, Desserts',
      'km': 'Dumas Road - 5.0 km',
      'name': '30% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.0k (180+)',
      'img': 'assets/images/allFood/biriyani5.jpeg',
      'foodname': 'Andhra Biryani ',
      'duration': '30-40 mins',
    },
    {
      'add': 'Goan Biryani, Beverages',
      'km': 'Ghod Dod Road - 2.8 km',
      'name': '25% OFF',
      'off': 'UPTO ₹90',
      'rate': '4.1k (220+)',
      'img': 'assets/images/allFood/biriyani6.jpeg',
      'foodname': 'Goan Biryani',
      'duration': '15-25 mins',
    },
    {
      'add': 'Kashmiri Biryani, Snacks',
      'km': 'Athwa - 3.0 km',
      'name': '20% OFF',
      'off': 'UPTO ₹80',
      'rate': '3.8k (150+)',
      'img': 'assets/images/allFood/biriyani7.jpeg',
      'foodname': 'Kashmiri Biryani',
      'duration': '20-30 mins',
    },
    {
      'add': 'Malabar Biryani, Desserts',
      'km': 'Parle Point - 4.5 km',
      'name': '15% OFF',
      'off': 'UPTO ₹70',
      'rate': '4.3k (300+)',
      'img': 'assets/images/allFood/biriyani8.jpeg',
      'foodname': 'Malabar Biryani',
      'duration': '25-35 mins',
    },
    {
      'add': 'Bengali Biryani, Beverages',
      'km': 'City Light - 2.2 km',
      'name': '50% OFF',
      'off': 'UPTO ₹160',
      'rate': '4.7k (320+)',
      'img': 'assets/images/allFood/biriyani9.jpeg',
      'foodname': 'Bengali Biryani',
      'duration': '15-25 mins',
    },
    {
      'add': 'Awadhi Biryani, Snacks',
      'km': 'Althan - 3.5 km',
      'name': '35% OFF',
      'off': 'UPTO ₹110',
      'rate': '4.5k (250+)',
      'img': 'assets/images/allFood/biriyani10.jpeg',
      'foodname': 'Awadhi Biryani',
      'duration': '20-30 mins',
    },
    {
      'add': 'Sindhi Biryani, Desserts',
      'km': 'Nanpura - 2.7 km',
      'name': '40% OFF',
      'off': 'UPTO ₹130',
      'rate': '4.6k (270+)',
      'img': 'assets/images/allFood/biriyani11.jpeg',
      'foodname': 'Sindhi Biryani',
      'duration': '20-30 mins',
    },
    {
      'add': 'Ambur Biryani, Beverages',
      'km': 'Majura Gate - 2.9 km',
      'name': '50% OFF',
      'off': 'UPTO ₹150',
      'rate': '4.9k (350+)',
      'img': 'assets/images/allFood/biriyani12.jpeg',
      'foodname': 'Ambur Biryani',
      'duration': '15-25 mins',
    },
    {
      'add': 'Bombay Biryani, Snacks',
      'km': 'Piplod - 3.1 km',
      'name': '30% OFF',
      'off': 'UPTO ₹100',
      'rate': '4.4k (240+)',
      'img': 'assets/images/allFood/biriyani13.jpeg',
      'foodname': 'Bombay Biryani',
      'duration': '20-30 mins',
    },
    {
      'add': 'Calcutta Biryani, Desserts',
      'km': 'Dumas Road - 4.0 km',
      'name': '45% OFF',
      'off': 'UPTO ₹140',
      'rate': '4.2k (260+)',
      'img': 'assets/images/allFood/biriyani14.jpeg',
      'foodname': 'Calcutta Biryani ',
      'duration': '25-35 mins',
    },
    {
      'add': 'Mughlai Biryani, Beverages',
      'km': 'Adajan - 1.9 km',
      'name': '25% OFF',
      'off': 'UPTO ₹90',
      'rate': '4.8k (280+)',
      'img': 'assets/images/allFood/biriyani15.jpeg',
      'foodname': 'Mughlai Biryani',
      'duration': '10-20 mins',
    },
    {
      'add': 'Dindigul Biryani, Snacks',
      'km': 'Udhna - 3.3 km',
      'name': '35% OFF',
      'off': 'UPTO ₹120',
      'rate': '4.5k (300+)',
      'img': 'assets/images/allFood/biriyani16.jpeg',
      'foodname': 'Dindigul Biryani',
      'duration': '20-30 mins',
    },



  ];


  @override
  List<Map<String, dynamic>> _foundFood = [];
  List<String> _allChips = ['Jalaram Khichdi', "La Pino'z Pizza", 'Samosa', 'Burger','Biryani','Cake','Dhokla','Paratha'];
  List<String> _filteredChips = [];
  TextEditingController _chipController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _foundFood = _allFoodList;
    _filteredChips = _allChips;

  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    List<String> chipResults = [];

    if (enteredKeyword.isEmpty) {
      results = _allFoodList;
      chipResults = _allChips;
    } else {
      results = _allFoodList.where((food) =>
          food['foodname'].toLowerCase().contains(enteredKeyword.toLowerCase())
      ).toList();

      chipResults = _allChips.where((chip) =>
          chip.toLowerCase().contains(enteredKeyword.toLowerCase())
      ).toList();
    }

    setState(() {
      _foundFood = results;
      _filteredChips = chipResults;
    });
  }

  void _addChip(String chip) {
    if (chip.isNotEmpty && !_allChips.contains(chip)) {
      setState(() {
        _allChips.add(chip);
        _chipController.clear();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Search for dishes & restaurants'),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16
              ),
              child: TextField(
                 onChanged: (value) => _runFilter(value),
                cursorColor: Colors.grey,
                decoration: InputDecoration(

                  hintText: "  Search items",
                  hintStyle: TextStyle(
                    color: Colors.grey
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.grey,),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(0),
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            banner(width),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'TRENDING SEARCHES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  letterSpacing: 1
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 8.0,
                children: _filteredChips.map((chip) {
                  return Chip(
                    label: Text(chip),
                    avatar: Icon(Icons.trending_up, color: Colors.black),
                    backgroundColor: Colors.white,
                  );
                }).toList(),
              ),
            ),
            _foundFood.isNotEmpty
                ? Column(
              children: List.generate(
                _foundFood.length,
                    (index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.more_vert),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Container(
                                  height: height * 0.210,
                                  width: width * 0.370,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                      image: AssetImage(_foundFood[index]['img']),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Spacer(),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.favorite_border, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 70),
                                      Text(
                                        '  ${_foundFood[index]['name']}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '  ${_foundFood[index]['off']}',
                                        style: TextStyle(fontSize: 13, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '  ${_foundFood[index]['foodname']}',
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      '  ⭐ ${_foundFood[index]['rate']} | ${_foundFood[index]['duration']}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '  ${_foundFood[index]['add']}',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      '  ${_foundFood[index]['km']}',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.060),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
                : Center(
              child: Text(
                'No results found! Try again.',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding banner(double width) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue[50],
                image: DecorationImage(
                  image: AssetImage('assets/images/intro/pizzabanner.jpg',),fit: BoxFit.cover
                )
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ENJOY THE CRICKET \nSEASON WITH',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Tasty Delights!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      textStyle: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold), // Set the text color to blue
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text('ORDER NOW'),
                  ),
                ],
              ),
            ),
          );
  }
}
