# Instrucciones despliegue sin contenerizacion

# Instrucciones desplegar Hasher
gem install sinatra

sudo tee -a /etc/hosts 0<<FINAL
#hasher
127.0.0.1 hasher
FINAL

ruby ./hasher/hasher.rb &

# Instrucciones desplegar Redis
sudo yum install -y redis

sudo tee -a /etc/hosts 0<<FINAL
#redis
127.0.0.1 redis
FINAL

sudo systemctl start redis.service

# Instrucciones desplegar RNG
pip install Flask

sudo tee -a /etc/hosts 0<<FINAL
#rng
127.0.0.1 rng
FINAL

python ./rng/rng.py &

#Instrucciones para desplegar Worker
pip install redis request

python ./worker/worker.py &

