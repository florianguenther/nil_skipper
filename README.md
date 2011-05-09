# What is this for?

By default the xml serialization of rails always returns a tag with the attribute *nil='true'* when the attributes value is nil.

	<person>
	  <id>1</id>
	  <first_name>Florian</first_name>
	  <last_name nil='true' />
	</person>
	
when you use the *nil_skipper* gem the output will look like this:

	<person>
	  <id>1</id>
	  <first_name>Florian</first_name>
	</person>
	
(All attributes with the value nil will be skipped completely)

# Installation

	gem install nil_skipper
	
