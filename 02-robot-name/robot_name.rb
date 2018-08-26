class Robot
  attr_accessor :name

  def initialize
    @name = generate_name
  end

  def generate_random
    robot_name = ""
    robot_name += ("A".."Z").to_a.sample(2).join
    robot_name += ("1".."9").to_a.sample(3).join
  end

  #Why can't I remove @ from the name variable here?
  def reset
    @name = generate_random
  end

end
