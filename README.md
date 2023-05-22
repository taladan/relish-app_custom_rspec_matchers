# [Archive: RSpec Expectations 3.9]( https://web.archive.org/web/20230214085518/https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/custom-matchers/define-a-custom-matcheru)
This repo contains all of the matcher examples from the internet archive of Relishapp.com's rspec matcher examples.

I have separated out the files in their original logical groupings according to how they are grouped on the original site.  To run these files, you will need `rspec` installed on your system.  

Running an example will look something like:

`rspec spec/define_a_custom_matcher/alias_spec.rb`

I have commented in the files where I thought it appropriate to explain what was going on, however rspec seems to be failry intuitive as far as explaining what is going on with its syntax.

*Please note:* there is one file here `spec/define_matcher_outside_rspec/define_a_matcher_with_default_messages.rb` that is NOT a spec file and will NOT run with rspec.  It it an example of how to integrate rspec tests outside of rspec itself, using Minitest. 
