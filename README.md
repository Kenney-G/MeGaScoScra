# Metagascra

This program allows you to view the top video games of all time on metacritic, accoridng to their algorithm. You can also pick a random game from the list. The original goal was to eventually set it up to allow users to search for a game and receive the score.

You will also be greeted with a prompt upon launching the program which will explain what the program is for and what you are able to do.


## Installation

<!--  	  Execute: -->

    $ bundle install

<!-- 	Or install it yourself as: -->

    $ gem install metagascra

## Usage

Simply choose from the options the prompt gives you. You can select a game from the 'all' option by inputting its number. 

## TODO:

- Expand the scope of the scraper to include the entire catalogue using a crawler. 
- Allow users to manually type in a title and receive the score
- General refactoring and clean-up, seperation of concerns, retooling

## Development

--*Please note that no tests have been written as of yet for this project.*

After checking out the repo, run `bin/setup` to install dependencies. Then, run `minitest/autorun` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle install`. 

This gem was not designed with public consumption in mind, but if you wish to release your own version you can use `gem install gem-release` and `gem bump` to change the version update the version number in `version.rb`. Then you will need to install the `rake` gem and run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Feel free to do whatever you want with the code. It will likely not be maintained.

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/kenney-g/metagascra/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Metagascra project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kenney-g/metagascra/blob/master/CODE_OF_CONDUCT.md).
