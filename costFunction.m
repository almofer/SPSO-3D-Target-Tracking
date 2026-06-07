function cost = costFunction(position, target)

cost = sum((position - target).^2);

end