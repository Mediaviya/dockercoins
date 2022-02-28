# Instrucciones despliegue sin contenerizacion

# Instrucciones desplegar Hasher
gem install sinatra

sudo tee -a /etc/hosts 0<<FINAL
#hasher
127.0.0.1 hasher
FINAL

ruby ./hasher/hasher.rb &

# Instrucciones desplegar Redis
