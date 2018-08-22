class AboutController < ApplicationController
  def conduct
  end

  def diversity
  end

  def press
  end

  def principals
  end

  def projects
    @projects = Project.all
  end

  def vision
  end

  def what
  end

  def who
    @teammates = Teammate.all
  end

end