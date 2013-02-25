require "../../config/environment"

User.destroy_all
User.create!([
  {
    :email => "test1@email.com",
    :firstname => "admin",
    :lastname => "admin",
    :password => "password"
  },
  {
    :email => "xxxx@email.com",
    :firstname => "somc",
    :lastname => "xxdf",
    :password => "123456"
  },
  {
    :email => "yyy@email.com",
    :firstname => "anothjer",
    :lastname => "emalsxx",
    :password => "123456"
  }
])
