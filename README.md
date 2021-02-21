# ATM Web App
A simple ATM web application has been created to perform withdrawals and deposit transactions. 
A user can have multiple accounts and accounts has their respective transactions.
You can check the list of users with all their accounts having respective balance on http://localhost:3000/accounts/
I have also used CRUD for users.

## Pre-requisites

 - Operating System - Windows
 - Development platform - Visual Code
 - Ruby (version 2.7.2)
 - Rails (version 6.1.2.1)
 - Bootstrap (version 4.3.1)
 - JQuery (version 3.5.1)

## Installation

 1. [Ruby](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.2-1/rubyinstaller-2.7.2-1-x64.exe)
 2. Rails : `gem install rails`
 3. [Node](https://nodejs.org/dist/v14.15.5/node-v14.15.5-x64.msi) : (To install Yarn)
 4. To install node packages : `npm install`in project directory
 5. Yarn : `npm install --global yarn`
 6. Bootstrap and JQuery : [Refer this tutorial](https://www.mashrurhossain.com/blog/rails6bootstrap4)
 7. SQLite : `gem install sqlite3-ruby``

## Setup
````
$ cd ATM
$ bundle install
$ rails s
$ rails db:migrate
````

## How to use this app?
You can use following features in this ATM Web App.

 1. Go to http://localhost:3000 on your browser
 2. Create user by clicking on button "CREATE USER"
 3. After signing up, you will be redirected to list of users.
		 - You can either view the user profile or update the user information.  
 4. Go to "VIEW PROFILE" and Create new account by clicking on button "CREATE 		NEW ACCOUNT".
		 - After creating new account, you will be redirected to list of accounts of all users.
 5. Click on "SHOW" button where you can see all the transactions of that account. 
 6. Create new transactions by clicking on "NEW TRANSACTION"
		 - If you select the transaction type as "DEPOSIT", then the amount will be added to the balance.
		 - If you select the transaction type as "WITHDRAW", then the amount will be deducted from the balance. But if you have amount of withdraw greater than the balance then transaction will not take place.

      
	
          
         
          

 
