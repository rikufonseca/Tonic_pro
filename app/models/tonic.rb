class Tonic < ApplicationRecord
  has_many :employees
  has_many :days
  has_many :users

  TONIC_ATHENS_DAYS = [
    {
      name: "Monday",
      opening: "12:00",
      closing: "21:00"
    },
    {
      name: "Tuesday",
      opening: "9:00",
      closing: "21:00"
    },
    {
      name: "Wednesday",
      opening: "9:00",
      closing: "18:40"
    },
    {
      name: "Thursday",
      opening: "9:00",
      closing: "21:00"
    },
    {
      name: "Friday",
      opening: "10:00",
      closing: "22:00"
    },
    {
      name: "Saturday",
      opening: "10:00",
      closing: "19:00"
    }
  ]
end
