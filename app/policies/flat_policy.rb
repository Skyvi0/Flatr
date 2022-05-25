class FlatPolicy < ApplicationPolicy
  attr_reader :user, :record

  def index?
    true
  end
  class Scope < Scope
    def resolve
      scope.all
    end
   end
  end
