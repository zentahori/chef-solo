name "web_server"
description "Builds a web server for Rails apps"
run_list( [
           "recipe[nginx]",
           "recipe[couchdb]",
           "recipe[git]",
           "recipe[github_keys]",
           "recipe[wkhtmltopdf]"
           ]
           )

default_attributes "teammight" => { "app" => 'TeamMight' }

override_attributes "github"=> {
  "repository"=> "git@github.com=>dmytro/TeamMight.git"
}

override_attributes "rails"=> {
  "path" => "/home/ubuntu/apps/TeamMight"
}

