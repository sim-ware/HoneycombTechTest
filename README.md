# HoneycombTechTest

## The challenge

We have a system that delivers advertising materials to broadcasters.

Advertising Material is uniquely identified by a 'Clock' number e.g.

* `WNP/SWCL001/010`
* `ZDW/EOWW005/010`

Our sales team have some new promotions they want to offer so
we need to introduce a mechanism for applying Discounts to orders.

Promotions like this can and will change over time so we need the solution to be flexible.

### Broadcasters

These are the Broadcasters we deliver to

* Viacom
* Disney
* Discovery
* ITV
* Channel 4
* Bike Channel
* Horse and Country


### Delivery Products

* Standard Delivery: $10
* Express Delivery: $20

### Discounts

* Send 2 or more materials via express delivery and the price for express delivery drops to $15
* Spend over $30 to get 10% off

### What we want from you

Provide a means of defining and applying various discounts to the cost of delivering material to broadcasters.

We don't need any UI for this, we just need you to show us how it would work through its API.

## Examples

Based on the both Discounts applied, the following examples should be valid:

* send `WNP/SWCL001/010` to Disney, Discovery, Viacom via Standard Delivery and Horse and Country via Express Delivery
    based on the defined Discounts the total should be $45.00

* send `ZDW/EOWW005/010` to Disney, Discovery, Viacom via Express Delivery
     based on the defined Discounts the total should be $40.50

## User Stories
```
As a Sales Team Member
So that I can give a client a quote
I'd like to see the price of an order
```
```
As a user
So that I can offer a client a Discounted quote
I'd like to see the Discounted Price of an order
```

# Bank practice tech test

This is a ruby program that can be run in irb or pry, which has the following
functionality developed using TDD and using OO principles:

## Getting started
Enter the following commands in your terminal to download the program:
- `git clone https://github.com/sim-ware/HoneycombTechTest.git`
- cd into the HoneycombTechTest directory
- Please run `bundle` to install the necessary ruby `gemfile` dependencies

## Usage
- Type the command `pry` in your terminal to run the example tests provided in .pryrc
- Alternatively, open `irb` and enter the following commands:

```
> o = Order.new
 => #<Order:0x007fe70d10f288 @clock="", @standard_del=[], @express_del=[], @price=0, @discount_price=0>

> o.clock_number('WNP/SWCL001/010')
 => "WNP/SWCL001/010"

>o.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
 => ["Disney", "Discovery", "Viacom"]

> o.express_delivery_companies('Horse & County')
 => ["Horse & County"]
> o

 => #<Order:0x007fe70d10f288 @clock="WNP/SWCL001/010", @standard_del=["Disney", "Discovery", "Viacom"], @express_del=["Horse & County"], @price=0, @discount_price=0>  
```
- 'o' is an Order with the clock id 'WNP/SWCL001/010', the companies "Disney", "Discovery", "Viacom" for Standard Delivery, and the companies "Horse & County" for Express Delivery.

```
> p = Pricer.new
 => #<Pricer:0x007f903c217d60>
>p.pricing(o)
 => 50
> o.price
 => 50
```
- 'p' is a Pricer Object that calculates the unDiscounted price of the order. In this example, the price is 50.

```
> d = Discounter.new
 => #<Discounter:0x007f903c1fd0c8 @expr=20>
> d.discounter_a(o)
 => 50
> d.discounter_b(o)
 => 45.0  
```
- 'd' is a Discounter Object that has a method per Discount. It runs the first Promotion and sees if it can discount the price (in this case not). It then applies the second Promotion, and the price is discounted from 50, to 45.
