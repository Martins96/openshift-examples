#####################################################################
#
# This script expose the running micro-go service 

# --> Create a new service with type loadbalancer
# --> The svc will have name microgo
# --> The svc must expose the TCP port 5000
# --> Expose with a route the new service
# --> Define a commant that will print in console the created routes,
#     filter the routes in order to show only the results with label 
#     "app=microgo"

#
#####################################################################
