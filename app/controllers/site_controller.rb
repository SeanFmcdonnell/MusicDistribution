class SiteController < ApplicationController

  def search
    # @results = []
    # [Artist, Album, Label].each do |model|
    #   @results += model.where("name LIKE ?", "%#{params[:term]}%")
    # end
    #
    @results = [Artist, Album, Label].map do |model|
      model.where("name LIKE ?", "%#{params[:term]}%")
    end.flatten
  end
end
