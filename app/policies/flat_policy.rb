class FlatPolicy < ApplicationPolicy
  attr_reader :user, :record

  class Scope < Scope
    def resolve
      scope.all
    end
   end
  end
