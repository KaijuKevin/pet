class Pet
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:time_passes) do
    @food_level = @food_level - 1
    @sleep_level = @sleep_level - 1
    @activity_level = @activity_level - 1
  end

  define_method(:is_alive) do
    @food_level > 0
  end

  define_method(:set_food_level) do |number|
    @food_level = number
  end

  define_method(:is_awake) do
    @sleep_level > 0
  end

  define_method(:set_sleep_level) do |number|
    @sleep_level = number
  end

  define_method(:is_happy) do
    @activity_level > 0
  end

  define_method(:set_activity_level) do |number|
    @activity_level = number
  end

  define_method(:check) do
    values = [name(), food_level(), sleep_level(), activity_level()]
  end

  define_method(:feed) do |food|
    food_table = {
      "apple" => 1,
      "banana" => 2
    }
    food_value = food_table.fetch(food)
    @food_level = @food_level + food_value
  end

  define_method(:play) do |activity|
    play_table = {
      "fetch" => 2,
      "race" => 3
    }
    play_value = play_table.fetch(activity)
    time_passes()
    @activity_level = @activity_level + play_value
  end

  define_method(:go_sleep) do
    time_passes()
    @sleep_level = @sleep_level + 2
  end
end
