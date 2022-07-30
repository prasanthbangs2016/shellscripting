help:		## Print Help Message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	   
frontend:	## Install Frontend Component
	@sh component/frontend.sh
    
mongodb:	## Install MongoDB Component	
	@sh component/mongodb.sh
    
catalogue:	## Install Catalogue Component
	@sh component/catalogue.sh
    
redis:		## Install Redis Component
	@sh component/redis.sh
    
user:		## Install User Component
	@sh component/user.sh
    
cart:		## Install Cart Component
	@sh component/cart.sh
    
mysql:		## Install MySQL Component
	@sh component/mysql.sh
    
shipping:	## Install Shipping Component
	@sh component/shipping.sh
    
payment:	## Install Payment Component
	@sh component/payment.sh
    
rabbitmq:	## Install RabbitMQ Component
	@sh component/rabbitmq.sh
