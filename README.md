<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email, project_title, project_description
-->

<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/badge/Ruby-2.5.3-orange)


![Crypto_USD_total](https://github.com/elyhess/crypto_usd_total/blob/main/banner.png)
<!-- TABLE OF CONTENTS -->
<summary><h2 style="display: inline-block">Table of Contents</h2></summary>
<ol>
  <li><a href="#about-the-project">About The Project</a>
  <li><a href="#learning-goals">About The Project</a>
  <li><a href="#project-board">Project Board</a></li>
  <li><a href="#database-schema">Database Schema</a></li>
  <li><a href="#built-with">Built With</a>
  <li><a href="#setup-instructions">Setup Instructions</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#acknowledgements">Acknowledgements</a></li>
</ol>

<!-- ABOUT THE PROJECT -->
## About The Project

With many of us having our crypto-currency assets spread across multiple exchanges and hardware wallets it can be hard to keep track of your cumulative US dollar amount. Crypto USD total is an application that was developed with the purpose of remedying this problem. Crypto USD total takes advantage of Coingeckos V3 API to provide real-time updates so that you always know how much your portfolio is worth.

This application is a work in progress. Track our progress here: [Github projects](https://github.com/elyhess/crypto_usd_total/projects/1).

<!-- LEARNING GOALS -->
## Learning Goals

* Consume JSON APIs 
* Build an application that requires authentication
* Organize and refactor code to be more maintainable 
* Deploy to Heroku 

<!-- PROJECT BOARD -->
## Project Board
Check out the [Project board](https://github.com/elyhess/crypto_usd_total/projects/1) for a complete list of features / user stories used to develop this application.

<!-- DATABBASE SCHEMA -->
## Database Schema

Coming soon...

<!-- BUILT WITH -->
## Built With

* [Ruby on Rails](https://rubyonrails.org/)
* [Postgresql](https://www.postgresql.org/)
* [Bootstrap](https://getbootstrap.com/)
* [CoinGecko API](https://www.coingecko.com/api/documentations/v3)


<!-- SETUP INSTRUCTIONS -->
## Setup Instructions
To get a local copy up and running follow these simple steps.

1. Clone the repo
   ```
   git clone https://github.com/elyhess/crypto_usd_total
   ```
2. Install dependencies
   ```
   bundle install
   ```
3. DB creation/migration
   ```
   rails db:create
   rails db:migrate
   rails db:seed
   ```
4. Run server and navigate to http://localhost:3000/
   ```
   rails s
   ```

<!-- CONTACT -->
## Contact

* [Sam Yeo](https://github.com/SK-Sam) 
* [Ely Hess](https://github.com/elyhess)


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [README template](https://github.com/othneildrew/Best-README-Template)
* [Turing School of Software & Design](https://github.com/turingschool-examples/viewing_party)
* [MovieDB](https://developers.themoviedb.org/3/getting-started/introduction)
