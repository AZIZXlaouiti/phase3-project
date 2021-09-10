require 'pry'
class DocumentController < ApplicationController
    get'/'do
       Document.all.to_json(except: [:created_at, :updated_at])
    end
    get '/:id' do
        @document = Document.find_by_id (params[:id])
        @document.to_json(except: [:created_at, :updated_at])
    end
    patch '/:id/edit'do
        binding.pry

    end
end