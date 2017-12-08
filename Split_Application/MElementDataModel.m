//
//  MElementDataModel.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

// This file will hold the details/data of the elements in the menu.

#import "MElementDataModel.h"

@implementation MElementDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //////////////////////////WHILE YOU WAIT//////////////////////////////////////////
        
        self.Appetizers = [NSMutableArray array] ; //creates an empty array for us to fill
        Menu_Element *App1 = [[Menu_Element alloc] init];
        App1.type = @"Appetizer";
        App1.name = @"OLIVES";
        App1.ingredients = @"marinated olives";
        App1.price =@"£ 3.00";
        
        self.Appetizers = [NSMutableArray array] ; //creates an empty array for us to fill
        Menu_Element *App2 = [[Menu_Element alloc] init];
        App2.type = @"Appetizer";
        App2.name = @"TORTILLA CHIPS";
        App2.ingredients = @"cispy tortilla chips served with salsa & guacamole";
        App2.price =@"£ 3.75";
        
        self.Appetizers = [NSMutableArray array] ; //creates an empty array for us to fill
        Menu_Element *App3 = [[Menu_Element alloc] init];
        App3.type = @"Appetizer";
        App3.name = @"NACHOS";
        App3.ingredients = @"crispy nachos topped with cheddar cheese and jalapenos, served with guacamole, sour cream and salsa";
        App3.price =@"£ 6.00";
        
        // Now we need to add the different appertizers to the array
        
        [self.Appetizers addObject:App1]; //index 1
        [self.Appetizers addObject:App2]; //index 2
        [self.Appetizers addObject:App3]; //index 3
        
        ////////////////////////////////////SALADS////////////////////////////////////////////////
        
        self.Salads = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * salad1 = [[Menu_Element alloc] init];
        salad1.type = @" Salad";
        salad1.name = @"CLASSIC CAESAR";
        salad1.ingredients = @"Cos lettuce, Grana Padano, anchovies, croutons, Caesar dressing";
        salad1.price = @"£ 3.75";
        
        self.Salads = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * salad2 = [[Menu_Element alloc] init];
        salad2.type = @"Salad";
        salad2.name = @"KALE CAESAR";
        salad2.ingredients = @"Kale leaves, Grana Padano, anchovies, croutons, Caesar dressing";
        salad2.price = @"£ 7.00";
        
        self.Salads = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * salad3 = [[Menu_Element alloc] init];
        salad3.type = @"Salad";
        salad3.name = @"CLASSIC COBB";
        salad3.ingredients = @"Chicken, bacon, avocado, blue cheese, tomato, egg, iceberg, baby spinach, house dressing";
        salad3.price = @"£ 6.00";
        
        self.Salads = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * salad4= [[Menu_Element alloc] init];
        salad4.type = @"Salad";
        salad4.name = @"AVOCADO & BEETROOT";
        salad4.ingredients = @"Quinoa, soy beans, toasted sunflower seeds, baby kale, Ranch chive dressing";
        salad4.price = @"£ 4.75";
        
        // Now we need to add the different salads to the array
        
        [self.Salads addObject:salad1]; //index 1
        [self.Salads addObject:salad2]; //index 2
        [self.Salads addObject:salad3]; //index 3
        [self.Salads addObject:salad4]; //index 4
        
        /////////////////////////PROPER BURGERS///////////////////////////////////////////////////
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger1 = [[Menu_Element alloc] init];
        burger1.type = @"Burger";
        burger1.name = @"THE FROMAGEMAS";
        burger1.ingredients = @"6oz hamburger, Barber's cheddar, Barber's Red Leicester, Byron cheese, crispy Grana Padano, red onion, smoked tomato ketchup, Grana Padano aioli and a jug of Byron cheese sauce";
        burger1.price = @"£ 10.75";
        
        self.Burgers = [NSMutableArray array] ; //creates an empty array for us to fill
        Menu_Element * burger2 = [[Menu_Element alloc] init];
        burger2.type = @"Burger";
        burger2.name = @"THE CHEESE";
        burger2.ingredients = @"Byron cheese, shredded iceberg, pickles, onion, American mustard and Byron sauce";
        burger2.price = @"£ 8.50";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger3 = [[Menu_Element alloc] init];
        burger3.type = @"Burger";
        burger3.name = @"CLASSIC CHEESE";
        burger3.ingredients = @"Mature Cheddar (or choose your cheese), lettuce, tomato, red onion, mayonnaise";
        burger3.price = @"£ 8.00";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger4 = [[Menu_Element alloc] init];
        burger4.type = @"Burger";
        burger4.name = @"CLASSIC";
        burger4.ingredients = @"Lettuce, tomato, red onion, mayonnaise";
        burger4.price = @"£ 7.00";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger5 = [[Menu_Element alloc] init];
        burger5.type = @"Burger";
        burger5.name = @"CHILLI";
        burger5.ingredients = @"Green chilli, American cheese, shredded iceberg, chipotle mayonnaise";
        burger5.price = @"£ 9.00";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger6 = [[Menu_Element alloc] init];
        burger6.type = @"Burger";
        burger6.name = @"C-REX";
        burger6.ingredients = @"Fried chicken breast, onion ring, American cheese, jalapeños, pickles, onion, BBQ sauce, mayonnaise";
        burger6.price = @"£ 10.50";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger7 = [[Menu_Element alloc] init];
        burger7.type = @"Burger";
        burger7.name = @"CLASSIC CHICKEN";
        burger7.ingredients = @"Grilled chicken breast, shredded iceberg, tomato, red onion, pickles, Byron sauce";
        burger7.price = @"£ 9.00";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger8 = [[Menu_Element alloc] init];
        burger8.type = @"Veggie Burger";
        burger8.name = @"BEAN PATTY";
        burger8.ingredients = @"Bean patty, roasted red pepper, baby spinach, tomato, red onion, aioli, Byron sauce";
        burger8.price = @"£ 8.00";
        
        self.Burgers = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * burger9 = [[Menu_Element alloc] init];
        burger9.type = @"Veggie Burger";
        burger9.name = @"MUSHROOM";
        burger9.ingredients = @"Portobello mushroom, goat's cheese, roasted red pepper, baby spinach, tomato, red onion, aioli";
        burger9.price = @"£ 8.00";
        
        // Now we need to add the different burgers to the array
        
        [self.Burgers addObject:burger1]; //index 1
        [self.Burgers addObject:burger2]; //index 2
        [self.Burgers addObject:burger3]; //index 3
        [self.Burgers addObject:burger4]; //index 4
        [self.Burgers addObject:burger5]; //index 5
        [self.Burgers addObject:burger6]; //index 6
        [self.Burgers addObject:burger7]; //index 7
        [self.Burgers addObject:burger8]; //index 8
        [self.Burgers addObject:burger9]; //index 9
    
        //////////////////////////////FRIES AND SIDES/////////////////////////////////////////////////
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS1 = [[Menu_Element alloc] init];
        FS1.type = @"Fries and sides";
        FS1.name = @"FRENCH FRIES";
        FS1.ingredients = @"Our famous salted french fries";
        FS1.price = @"£ 3.00";
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS2 = [[Menu_Element alloc] init];
        FS2.type = @"Fries and sides";
        FS2.name = @"CHEESE FRIES";
        FS2.ingredients = @"French fries topped with Byron cheese";
        FS2.price = @"£ 4.00";
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS3 = [[Menu_Element alloc] init];
        FS3.type = @"Fries and sides";
        FS3.name = @"SWEET POTATO FRIES";
        FS3.ingredients = @"";
        FS3.price = @"£ 4.00";
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS4 = [[Menu_Element alloc] init];
        FS4.type = @"Fries and sides";
        FS4.name = @"ONION RINGS";
        FS4.ingredients = @"";
        FS4.price = @"£ 3.50";
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS5 = [[Menu_Element alloc] init];
        FS5.type = @"Fries and sides";
        FS5.name = @"MACARONI CHEESE";
        FS5.ingredients = @"with mature Cheddar and Gran Moravia cheese";
        FS5.price = @"£ 4.00";
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS6 = [[Menu_Element alloc] init];
        FS6.type = @"Fries and sides";
        FS6.name = @"COLESLAW";
        FS6.ingredients = @"";
        FS6.price = @"£ 3.00";
        
        self.FriesSides = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * FS7 = [[Menu_Element alloc] init];
        FS7.type = @"Fries and sides";
        FS7.name = @"CHICKEN NUGGETS";
        FS7.ingredients = @"9 with BBQ sauce";
        FS7.price = @"£ 4.75";
        
        // Now we need to add the different salads to the array
        
        [self.FriesSides addObject:FS1]; //index 1
        [self.FriesSides addObject:FS2]; //index 2
        [self.FriesSides addObject:FS3]; //index 3
        [self.FriesSides addObject:FS4]; //index 4
        [self.FriesSides addObject:FS5]; //index 5
        [self.FriesSides addObject:FS6]; //index 6
        [self.FriesSides addObject:FS7]; //index 7
        
        ////////////////////////////////////DESSERTS////////////////////////////////////////////////
        
        self.Desserts = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * dessert1 = [[Menu_Element alloc] init];
        dessert1.type = @"Desserts";
        dessert1.name = @"OREO CHEESECAKE";
        dessert1.ingredients = @"Oreo cookie base, vanilla and Oreo cheesecake, topped with … more Oreos";
        dessert1.price = @"£ 4.95";
        
        self.Desserts = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * dessert2 = [[Menu_Element alloc] init];
        dessert2.type = @"Desserts";
        dessert2.name = @"CHOCOLATE BROWNIE";
        dessert2.ingredients = @"Served with vanilla ice cream and chocolate sauce";
        dessert2.price = @"£ 4.95";
        
        // Now we need to add the different salads to the array
        
        [self.Desserts addObject:dessert1]; //index 1
        [self.Desserts addObject:dessert2]; //index 2
        
        ////////////////////////////////////DRINKS////////////////////////////////////////////////
        
        self.Drinks = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * drink1 = [[Menu_Element alloc] init];
        drink1.type = @"Drinks";
        drink1.name = @"JUICE";
        drink1.ingredients = @"Orange, Apple or Cranberry";
        drink1.price = @"£ 3.50";
        
        self.Drinks = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * drink2 = [[Menu_Element alloc] init];
        drink2.type = @"Drinks";
        drink2.name = @"SOFTS";
        drink2.ingredients = @"Coke,Diet Coke, Coke Zero, Sprite";
        drink2.price = @"£ 2.60";
        
        self.Drinks = [NSMutableArray array]; //creates an empty array for us to fill
        Menu_Element * drink3 = [[Menu_Element alloc] init];
        drink3.type = @"Drinks";
        drink3.name = @"MILKSHAKES";
        drink3.ingredients = @"SALTED CARAMEL, REESE'S PEANUT BUTTERCUP, BANANA, OREO, VANILLA, CHOCOLATE, STRAWBERRY";
        drink3.price = @"£ 4.75";
        
        // Now we need to add the different salads to the array
        
        [self.Drinks addObject:drink1]; //index 1
        [self.Drinks addObject:drink2]; //index 2
        [self.Drinks addObject:drink3]; //index 3
    }
    
    return self;

}

@end
