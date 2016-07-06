getPrice = (quantity) ->
    prices = [
        {qty: 10, price: 90}
        {qty: 5, price: 95}
        {qty: 0, price: 100}
    ]
    for range in prices
        if range.qty <= quantity
            return quantity * range.price
 
# Test
console.log (getPrice 1) == 100
console.log (getPrice 5) == 475
console.log (getPrice 100) == 9000