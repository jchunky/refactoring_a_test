require "singleton"

# This class simulates a DB
# Assume its API is fixed and it cannot change
class DB
  include Singleton

  def self.save(object)
    instance.save(object)
  end

  def self.delete(object)
    instance.delete(object)
  end

  def initialize
    @objects = []
  end

  def save(object)
    @objects << object
  end

  def delete(object)
    @objects.delete(object)
  end

  def all
    @objects.dup
  end

  private

  attr_accessor :objects
end
