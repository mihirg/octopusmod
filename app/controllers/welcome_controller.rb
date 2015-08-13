class WelcomeController < ApplicationController
  def index

    User.create({name: "Gore", location: "master" })
    Octopus.using(:replica) do
      User.create({name: "mihir",location: "replica" })
    end

    u = User.using(:replica).last
    u
  end
end
