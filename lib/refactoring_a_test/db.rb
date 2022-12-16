require "singleton"

# This class simulates a DB
# Assume its API is fixed and it cannot change
class DB
  include Singleton
  attr_accessor :objects

  def initialize
    @objects = []
  end

  def self.save(object)
    instance.save(object)
  end

  def self.delete(object)
    instance.delete(object)
  end

  def self.clear
    instance.clear
  end

  def save(object)
    @objects << object
  end

  def delete(object)
    @objects.delete(object)
  end

  def clear
    @objects = []
  end

  def all
    @objects.dup
  end

  private
end
