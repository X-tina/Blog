# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
Post.delete_all

Post.create(title: 'First Post',
        	text: %{Text_1})
           
Post.create(title: 'Second Post',
        	text: %{Text_2})

Post.create(title: 'Third Post',
        	text: %{Text_3})
