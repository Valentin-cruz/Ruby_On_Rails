vagrant@vagrant-ubuntu-trusty-64:/vagrant/poly$ rails g model Comment commentable:references{polymorphic} comment

# Add comment 
Comment.create(commentable:User.first, comment:"poly comment")
Comment.create(commentable:Blog.first, comment:"poly comment")
Comment.create(commentable:Post.first, comment:"poly comment")
Comment.create(commentable:Message.first, comment:"poly comment")

# Update comment
Comment.second.update(comment:"Update")

#delete comment
Blog.first.comments.first.delete

