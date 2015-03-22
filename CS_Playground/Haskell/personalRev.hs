-- income calculator
income x = x * 2
rent y = y
card i j = i + j

monthly x y = income x - ( rent y + 62 )
after x y i j = monthly(x y) - card(i j)
