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
For the calculation of the emissions of CO2 I used 

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
