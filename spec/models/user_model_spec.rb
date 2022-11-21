# == Schema Infomation
# 
# id          :integer    not null, primary key    not null, primary key
# name              :string 
# email             :string 
# created_at        :datetime , precision: 6, null: false
# updated_at        :datetime , precision: 6, null: false
# password_digest   :string 
# remember_digest   :string 
# admin             :boolean , default: false
# activation_digest :string 
# activated         :boolean , default: false
# activated_at      :datetime 
# reset_digest      :string 
# reset_sent_at     :datetime 

# Indexes

# index_users_on_email    (name => email)  
