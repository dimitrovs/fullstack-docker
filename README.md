# fullstack-docker
Docker image of the Yeoman generator for AngularJS with an Express server

This image is in an early development stage. Running from scratch (i.e. empty project)
is a bit rough. It goes something like this:

	docker run --rm -it -e SSH_PASSWORD='test' -v $(pwd):/home/yo/app stefand/fullstack-latest

replace $(pwd) with the path to your app, or where you want it to created.

This will drop you in a console. From here run the Yo generator:

yo angular-fullstack [app-name]

once it finishes, you need to exit the docker image, then restart it as you would
for an existing app. For existing app use this:

	docker run -d -e SSH_PASSWORD='test' -p 9000:9000 -p 35729:35729 -p 5858:5858 -p 2222:22 -v $(pwd):/home/yo/app stefand/fullstack-latest

Set SSH_PASSWORD to the password you want to use to connect to this container over SSH.

SSH will be running and exposed on port 2222 . You can connect as user 'yo'.
