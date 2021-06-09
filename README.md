# Vendor Management System

### Description
A proof-of-concept system, allowing staff to manage and monitor existing vendors, and to register and screen new vendors

---
### Set Up System for localhost 
1. create ```database.yml``` in ```/config``` 
2. copy the following code in: 
```  
development:  
  adapter: postgresql  
  database: team12_project_dev    
  min_messages: warning  
test:  
  adapter: postgresql  
  database: team12_project_test  
  min_messages: warning    
```
3. run ```sudo service postgresql start```
4. run ```rails db:create```
5. run ```rails db:migrate```
6. run ```rails db:seed```
7. run ```bundle exec rails s```
---

### User Accounts
Password for all accounts: password

#### Staff accounts
- internal1@gmail.com
- internal2@gmail.com

#### Vendor accounts
##### Approved Vendors:
- existingvendor1@gmail.com
- existingvendor2@gmail.com
- existingvendor3@gmail.com
- existingvendor4@gmail.com
- existingvendor5@gmail.com
- existingvendor6@gmail.com

##### Unapproved Vendors:
- newvendor1@gmail.com
- newvendor2@gmail.com
- newvendor3@gmail.com
- newvendor4@gmail.com
- newvendor5@gmail.com
