SELECT pfirstname, (pfavorites -> 'Desserts') ? 'ice cream' FROM people;
