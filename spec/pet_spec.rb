require('rspec')
require('pet')

describe(Pet) do
  describe("#initialize") do
    it("sets the name and life levels of a new Pet") do
      my_pet = Pet.new("lil dragon")
      expect(my_pet.pet_name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Pet has left by 1") do
      my_pet = Pet.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Pet.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Pet.new("lil dragon")
      my_pet.set_food_level(0) #make a method that will change the food level of your Pet.
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe("#is_awake") do
   it("is awake if the sleep level is greater than 0") do
     my_pet = Pet.new("lil dragon")
     expect(my_pet.is_awake()).to(eq(true))
    end

    it("is asleep if the sleep level is 0") do
      my_pet = Pet.new("lil dragon")
      my_pet.set_sleep_level(0)
      expect(my_pet.is_awake()).to(eq(false))
    end
  end

  describe("#is_happy") do
    it("is happy if the activity level is greater than 0") do
      my_pet = Pet.new("lil dragon")
      expect(my_pet.is_happy()).to(eq(true))
    end

    it("is unhappy if the activity level is 0") do
      my_pet = Pet.new("lil dragon")
      my_pet.set_activity_level(0)
      expect(my_pet.is_happy()).to(eq(false))
    end
  end

  describe("#check") do
    it("shows all levels for the pet") do
      my_pet = Pet.new("lil dragon")
      expect(my_pet.check()).to(eq(['lil dragon', 10, 10, 10]))
    end
  end

  describe("#feed") do
    it("adds to the food level") do
      my_pet = Pet.new("lil dragon")
      my_pet.feed("apple")
      expect(my_pet.check()).to(eq(['lil dragon', 11, 10, 10]))
    end
  end

  describe("#play") do
    it("adds to the activity level and decreases the food and sleep level") do
      my_pet = Pet.new("lil dragon")
      my_pet.play("fetch")
      expect(my_pet.check()).to(eq(['lil dragon', 9, 9, 11]))
    end
  end

  describe("#go_sleep") do
    it("adds to sleep level and pass time") do
      my_pet = Pet.new("lil dragon")
      my_pet.go_sleep()
      expect(my_pet.check()).to(eq(['lil dragon', 9, 11, 9]))
    end
  end
end
