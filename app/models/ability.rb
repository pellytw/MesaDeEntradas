class Ability
  include CanCan::Ability

  def initialize(user)
    user.roles.each { |role|
      role.permissions.each { |permission|
        can permission.conduct.to_sym, permission.regulator.constantize
      }
    }

  end
end
