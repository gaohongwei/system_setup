sudo add-apt-repository ppa:chris-lea/redis-server
sudo apt-get update
sudo apt-get install redis-server -y

# redis-server &
# service redis-server start
# update-rc.d redis-server enable
# update-rc.d redis-server defaults
# /etc/redis/redis.conf

gem 'redis'
gem 'redis-namespace'
gem 'redis-rails'
gem 'redis-rack-cache'
#protocol serialization/deserialization and blocking I/O
#gem 'hiredis', '0.6.0'
#gem 'resque', '1.24.1'

Configure Rails cache store as Redis,
then use Rails.cache
# config/application.rb
#...........
config.cache_store = :redis_store, 'redis://localhost:6379/0/cache', { expires_in: 90.minutes }
#.........

Rails.cache.delete("categoriess")
@categories = Rails.cache.fetch("categories") do
  Category.all
end
@categories = Rails.cache.fetch("categories", expires_in: 5.minutes) do
  Category.all
end


####### Work on redis directly #######
The redis-namespace gem allows us to create nice a wrapper around Redis:
# config/initializers/redis.rb 
$redis = Redis::Namespace.new("site_point", :redis => Redis.new)

Rails c
$redis.set("test_key", "Hello World!")
$redis.get("test_key")


# app/helpers/category_helper.rb
module CategoryHelper
  def fetch_categories
    categories =  $redis.get("categories")
    if categories.nil?
      categories = Category.all.to_json
      $redis.set("categories", categories)
    end
    @categories = JSON.load categories
  end
end


# app/models/category.rb
class Category
  #...........
  after_save :clear_cache

  def clear_cache
    $redis.del "categories"
  end
  #...........
end

Using Rails.cache is cleaner


https://medium.com/@petehouston/install-and-config-redis-server-on-ubuntu-linux-16-04-3c59729e12cc
https://medium.com/@LuisOsnet/model-caching-using-redis-and-rails-5-4666b7e8031f
