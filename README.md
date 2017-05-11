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
- 'o' is an Order with the clock id 'WNP/SWCL001/010', the companies "Disney", "Discovery", "Viacom" for Standard Delivery, and the companies "Horse & County" for Express Delivery

```
> bc.deposit("01/01/2012", 100)
 => [{:date=>"01/01/2012", :credit=>100, :debit=>0, :balance=>100}]
```

```
> bc.withdraw("02/01/2012", 10)
 => [{:date=>"01/01/2012", :credit=>100, :debit=>0, :balance=>100}, {:date=>"02/01/2012", :credit=>0, :debit=>10, :balance=>90}]
```

```
> bc.getStatement
 date      | credit | debit | balance
--------------------------------------
01/01/2012 |   100   |  0  |  100
02/01/2012 |   0   |  10  |  90
```

NOTE: The following commands will cause the program to exit with the message:
"Withdrawal denied: insufficient funds"
`bc = BankAccount.new`
`bc.withdraw("02/01/2012", 10)`

## Running tests

Use the command `rspec`to run tests

![RSpec tests](rspec.png)
