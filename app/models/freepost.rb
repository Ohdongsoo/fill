class Freepost < ApplicationRecord
       belongs_to :user
       has_many :free_comments
       has_many :impressions, :as=>:impressionable
       def impression_count
           impressions.size
       end
       has_many :likes
       has_many :liked_users, through: :likes, source: :user        
       def unique_impression_count
           # impressions.group(:ip_address).size gives => {'127.0.0.1'=>9, '0.0.0.0'=>1}
           # so getting keys from the hash and calculating the number of keys
           impressions.group(:ip_address).size.keys.length #TESTED
       end
end
