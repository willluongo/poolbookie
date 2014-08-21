Pool Bookie
===========

Have a pool with some colleagues? Use this to keep it all straight!

# Design Document

## Models

### Users
- can have many bets

### Wagers
- can have one user
- can have one outcome

### Outcomes
- can have many bets

## Views

### Users
- can see their bets and their total liability

### Pools
- can see the total pot and the breakdown of odds for the various outcomes (and their respective payouts)

## Controllers
- control 