class Tonic < ApplicationRecord
  has_many :employees
  has_many :days
  has_many :users

  TONIC_ATHENS_DAYS = [
    {
      name: "Monday",
      opening: "10",
      closing: "20"
    },
    {
      name: "Tuesday",
      opening: "10",
      closing: "22"
    },
    {
      name: "Wednesday",
      opening: "10",
      closing: "22"
    },
    {
      name: "Thursday",
      opening: "10",
      closing: "22"
    },
    {
      name: "Friday",
      opening: "10",
      closing: "22"
    },
    {
      name: "Saturday",
      opening: "10",
      closing: "22"
    },
    {
      name: "Sunday",
      opening: "10",
      closing: "14"
    }
  ]
end
