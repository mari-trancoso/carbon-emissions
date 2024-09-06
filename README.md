# README

Do you want to know how much carbon you emit?

Use this calculator to find out!

Simply provide:

* Emission source
* Quantity
* Dates (start and end)

## Decisions

### Database
I choose to have only to models, one for `EmissionSource` and other `Entry`
- Emission Source: is a databse for the user choose the options for emission source
- Entry: is the model that will have the results of the emissions, based in the emission source

### Calculation
For the total CO2 emission calculations, I used these models as a basis (for both cases, I assumed the same values for every year):

- For aviation gasoline emissions:
 Liters: CO2 => 2.2564697, CH4 => 0, N2O => 0, CO2_eq => 0, CO2_bio => 0

- For commercial firewood emissions:
 Tons: CO2 => 0, CH4 => 0, N2O => 0, CO2_eq => 0, CO2_bio => 1451.49378

So, for the final calculation: (total CO2 previously calculated * 1) + (total CH4 previously calculated * 28) + (total N2O previously calculated * 265)

## Pre-requisites

- Ruby 3.3.0
- Rails 7.1.4

## Setup the database

```bash
$ bin/rails db:prepare
```

## Running the application

```bash
$ bin/dev
```
