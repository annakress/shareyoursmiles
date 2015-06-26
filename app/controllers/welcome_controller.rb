class WelcomeController < ApplicationController
  def index
      @smiles = Smile.paginate(:page => params[:page], :per_page => 20,  :order => 'created_at DESC')
  end
end
