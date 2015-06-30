Landmark.create(name: 'BQE', year_completed: '1961')
Landmark.create(name: 'Holland Tunnel', year_completed: '1927')
Landmark.create(name: 'Wall Street Wall', year_completed: '1640')

george = Figure.create(name: "George Washington")
barack = Figure.create(name: "Barack Obama")

president = Title.create(name: "President")
criminal = Title.create(name: "Criminal")
student = Title.create(name: "Student")
regular_person = Title.create(name: "Regular Person")


Figure.create(name: "Bernie Madoff").titles << criminal
barack.titles << president
barack.titles << student
george.titles << president
george.titles << regular_person

# Landmark.create(name: 'The GW Bridge', year_completed: '1960').figure = george
# Landmark.create(name: 'Future Barack landmark', year_completed: '2030').figure = barack

