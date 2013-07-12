class PhotosController < ApplicationController
  load_and_authorize_resource :photo

  def destroy
    @photo.destroy
    redirect_to url_for(controller: @photo.owner_type.underscore.pluralize, action: 'edit', id: 4), alert: 'Photo deleted'
  end
end
