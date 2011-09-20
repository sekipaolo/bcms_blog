module Cms::Routes
  def routes_for_bcms_blog
<<<<<<< HEAD
    
    blog_feeds '/blog/feeds', :controller => "feeds", :format => "rss"
    
    namespace(:cms) do |cms|      
      cms.content_blocks :blogs
      cms.content_blocks :blog_posts
      cms.content_blocks :blog_comments
=======
    match '/blog/feeds', :to=>"feeds#index", :defaults=>{:format => "rss"}, :as=>'blog_feeds'
    namespace(:cms) do     
      content_blocks :blogs
      content_blocks :blog_posts
      content_blocks :blog_comments
>>>>>>> rails3
    end

  end
end
