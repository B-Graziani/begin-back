class PagesController < ApplicationController
  def home
  end
  def about
  end

  def contact
    @members = ['thanh', 'germaiins', "dimitri", "boris", "damien"]

    if params[:member]
      @members = @members.select{ |member| member.start_with?(params[:member]) }
    end
  end

end
