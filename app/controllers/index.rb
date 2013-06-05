get '/' do
  @category = Category.all
  erb :index
end


get '/categories/:name' do
  category = Category.find_by_name(params[:name])
  @posts = category.posts
  erb :list_posts
end

get '/:name/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post_desc
end

get '/new_post' do 
  new_post = Post.new(params[:title],params[:description])
 erb :new_post
end



# post '/posts/:id/update' do
#   @categories = Category.all
#   @post = Post.find(params[:id])
#     if !@post.valid?
#       @errors = @post.errors
#       erb :new
#     else
#       @post.update_attributes(params[:posts])
#       erb :published
#     end
# end

# get '/posts/:id/edit' do
#   @categories = Category.all
#   @post = Post.find(params[:id])
#   if (@post.edit_hash != params[:key])
#     redirect '/'
#   else 
#     erb :edit
#   end
# end

# get '/posts/:id' do |id|
#   @post = Post.find(id)
#   erb :post
# end
