def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if person[:favourites][:snacks].include?(food)
    return true
  end
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
  return person[:friends].length()
end

def delete_friend(person, old_friend)
  person[:friends].delete(old_friend)
  return person[:friends].length
end

def total_money(people)
  money = 0

  for person in people
    money += person[:monies]
  end

  return money
end

def lend_money(lendee, lender, amount)
  
  lendee[:monies] += amount
  lender[:monies] -= amount

end

def all_favourite_food(people)
  all_favourite_food = []

  for person in people
    for snack in person[:favourites][:snacks]
      all_favourite_food << snack
    end
  end

  return all_favourite_food

end

def find_losers(people)
  losers = []

    for person in people
      if person[:friends].length == 0
        losers.push(person[:name])
      end
    end

  return losers
  
end
