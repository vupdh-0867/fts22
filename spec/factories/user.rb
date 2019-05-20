FactoryBot.define do
  factory :user do |c|
    c.email {"test@test.com"}
    c.password {"password"}
    c.password_confirmation {"password"}
    c.role {User.roles[:admin]}
  end

  factory :not_admin, class: User do |c|
    c.email {"notadmin@test.com"}
    c.password {"password"}
    c.password_confirmation {"password"}
    c.role {User.roles[:trainer]}
  end
end
