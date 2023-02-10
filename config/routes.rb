Rails.application.routes.draw do
  resources :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
end

# def destroy
#   production = Production.find_by(id: params[:id])
#   if production
#     production.destroy
#     head :no_content
#   else
#    render json: {error: "production not found"}, status: :not_found
#   end
# end