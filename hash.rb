chiikawa = {
  color: "pink",
  favorite_color: "pink",
  age: 13,
  size: "small",
  friends: ["hachiware", "momonga"],
  type: "hamster",
  origin: {
    country: "japan",
    city: "tokyo"
  },
  height: 1.1
}

#[]= assign
chiikawa["sdasdasd"] = 123
chiikawa[:favorite_color] = "red"

#[] read
puts chiikawa[:type]

puts chiikawa

