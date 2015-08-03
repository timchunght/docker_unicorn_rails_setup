###Plug-and-Use Docker setup for Rails, Nginx, and Unicorn

#Goal:

Our goal is to utilise Docker and quickly package our Rails app and make it ready for deployment like Heroku. However, we do not want to use Heroku's closed platform when there are far cheaper options like AWS and DigitalOcean.

This is an Docker setup that will abstract and simplify the deployment process for almost any Rails app that runs on ``postgres``, ``unicorn`` using ``Nginx``. 

To use these files out of the box, copy them into your app's root directory.

Say, my app currently resides on my local machine at,

	~/Documents/workspace/my_rails_app

Copy every file in this repo into the ``my_rails_app`` folder. (``README`` is optional as it might replace your existing ``README``)

Now, let's see the magic.

To run the app, do the following (assuming you are inside the app's root directory)

	docker-compose build
	docker-compose up #Shut ctrl+c to shut it down, this allows the ``db image to be built if it doesn't exist yet
	docker-compose run web rake db:create
	docker-compose run web rake db:migrate
	docker-compose run web rake assets:precompile
	docker-compose up

All of these commands remind me of Heroku.

Now, you app is up and running. It is almost as simple as Heroku.

Note, DigitalOcean has a prebuilt Docker image that you can use. However, you will need to install ``docker-compose`` or previously known as ``fig``. Both ``fig.yml`` and ``docker-compose.yml`` files are accepted by ``docker-compose``. They are syntactically identical.

If everything goes well, you have your app ready to deployed in no time. ``Docker`` to an AWESOME tool for automating your deployment workflow.

#Customisation Section