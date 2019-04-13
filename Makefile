# make sure swagger.yaml and swagger_ruby.json is update-to-date
gen:
	docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli:2.4.4 generate \
		-i /local/swagger.yaml \
		-l ruby \
		-o /local/ -c /local/swagger_ruby.json
	find ./rbflagr.gemspec -type f -exec sed -i "" "s/'json', '~> 2.1', '>= 2.1.0'/'json'/g" {} +
	find ./.gitignore -type f -exec sed -i "" "s/# Gemfile.lock/Gemfile.lock/g" {} +
	echo "\n## Use Makefile\n\`make gen\`\n" >> ./README.md
