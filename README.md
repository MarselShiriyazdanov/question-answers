Question Answers
================

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Short description
-----------
This app built in classic rails-way. Basic idealogy for this is implementing all feature without try to guess what new features we will have in the future.
No particular design patterns was applied (maybe except decorators). Although it would benefit from service layer (for example, for create/update user from google auth instead using method in *User* model and for question search handling), Query objects and form object for better separation of concerns I decided not to implement it because it overkill for simple application which will not grow and because of self imposed limitation of 4 hours for this task.
Also it would be better to have separate table for oauth identities (or at least column for provider name) which will allow to add new oauth providers.
Dockerfile with docker-compose is added for quick start.
