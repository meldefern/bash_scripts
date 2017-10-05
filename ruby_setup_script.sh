#!/bin/bash

RUBY_PKG=$(dpkg -s ruby)
#INSTALLED=$(gem list -i )

#check if ruby is installed

if [[ ¨¨ == $RUBY_PKG ]]; then
	#install ruby
	sudo apt-get install ruby
	echo Ruby has been installed
else
	echo Ruby is already installed
fi

echo Installing gems

#install header files for compiling extension modules for Ruby
sudo apt-get install ruby-dev

# If the gem is not installed, install. Output successful installation.
if [ $INSTALLED bundler == false ]; then
	echo Installing bundler
	sudo gem install bundler
else
	echo bundler is already installed
fi
echo bundler successfully installed >> output.txt

if [ $INSTALLED capybara == false ]; then
	echo Installing capybara
	sudo gem install ruby-capybara
else
	echo capybara is already installed
fi
echo capybara successfully installed >> output.txt

if [ $INSTALLED cucumber == false ]; then
	echo Installing cucumber
	sudo gem install cucumber
else
	echo cucumber is already installed
fi
echo cucumber successfully installed >> output.txt

if [ $INSTALLED site_prism == false ]; then
	echo Installing site_prism
	sudo gem install site_prism
else
	echo site_prism is already installed
fi
echo site_prism successfully installed >> output.txt

if [ $INSTALLED pry == false ]; then
	echo Installing pry
	sudo gem install pry
else
	echo pry is already installed
fi
echo pry successfully installed >> output.txt

if [ $INSTALLED activesupport == false ]; then
	echo Installing activesupport
	sudo gem install activesupport
else
	echo activesupport is already installed
fi
echo activesupport successfully installed >> output.txt



