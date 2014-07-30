require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user should enter a first name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
    assert !user.errors[:last_name].empty?
    assert !user.errors[:profile_name].empty?
  end

  test "a user shouwld have a unique profile name" do
    user = User.new
    user.first_name = "Ricardo"
    user.last_name = "Guillen"
    user.email = "ricardo@503estudio.com"
    user.password = "W3lcom3321"
    user.password_confirmation = "W3lcom3321"
    user.profile_name = "nizzle"
    assert !user.save
    puts user.errors.inspect
    assert !user.errors[:profile_name].empty?
  end
end
