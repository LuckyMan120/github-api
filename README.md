# Backend Web Development Screening

### Postman Api Doc : infrastucture/Github.postman_collection.json
### database dump : infrastucture/github.sql


Implement an api that will search through GitHub users and their repositories list (https://developer.github.com/v3/) using Laravel framework (php). 
All data from GitHub API should be stored in the DataBase.
The relevant data could be seen from the example design below. 

Additional requirements:
- User list endpoint should be paginated (3 per page) and be sorted based on the number of repositories, followers and popularity (how many times user details are requested)
- Please add search logging (search requests with request results)
- Add endpoint for showing 3 most popular users by date 

The time to complete this task is 24 hours
The application should be deployed and will be tested via postman.

Bonus Points:
Add api documentation
