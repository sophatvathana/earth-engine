APP_NAME := earthengine

all: compile

compile: clean
	cp src/$(APP_NAME).app ebin/
	erlc -pa ebin/ -o ebin/ src/*.erl

compile_test: compile
	erlc -pa ebin/ -o ebin/ test/*.erl

run:
	erl -pa ebin/ deps/**/ebin/ -sname $(APP_NAME) -s $(APP_NAME) -config config/production

run_dev:
	erl -pa ebin/ deps/**/ebin/ -sname $(APP_NAME) -s $(APP_NAME) -config config/development

run_test: compile_test
	erl -noshell -pa ebin/ deps/**/ebin/ -s $(APP_NAME) -run $(MODULE) test -run init stop -config config/test

clean:
	rm -f ebin/*.beam
	rm -f erl_crash.dump
