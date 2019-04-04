class PitchPolicy < ApplicationPolicy
    attr_reader :user, :pitch
  
    def initialize(user, pitch)
      @user = user
      @pitch = pitch
    end
  
    def index?
      user
    end
  
    def show?
      user
    end
  
    def create?
      false
    end
  
    def new?
      create?
    end
  
    def update?
      user
    end
  
    def edit?
      update?
    end
  
    def destroy?
      false
    end
  
    class Scope
      attr_reader :user, :scope
  
      def initialize(user, scope)
        @user = user
        @scope = scope
      end
  
      def resolve
        scope.all
      end
    end
  end
  