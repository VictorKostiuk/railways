module InstanceCounter
  @@instances = 0

  def instances
    @@instances
  end

  def register_instance
    @@instances += 1
  end
end