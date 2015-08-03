#!/bin/bash
cd /var/www/app
export SECRET_KEY_BASE=$(rake secret)
bundle exec unicorn -c config/unicorn.rb -E production -D
nginx

