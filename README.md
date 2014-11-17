jekyll & jekyll-import: how to import tumblr to jekyll
======================================

##usage: 
  
   `docker run -i -t -p 4000:4000 jekyll /bin/bash`
   
   `docker exec -it [container] bash`

```
$ cd 
$ jekyll new mytumblr
$ cd mytumblr
$ ruby -rubygems -e 'require "jekyll-import";
  JekyllImport::Importers::Tumblr.run({
  "url"            => "http://mytumblr.tumblr.com",
  "format"         => "html", # or "md"
  "grab_images"    => true,  # whether to download images as well.
  "add_highlights" => false,  # whether to wrap code blocks (indented 4 spaces) in a Liquid "highlight" tag
  "rewrite_urls"   => false   # whether to write pages that redirect from the old Tumblr paths to the new Jekyll paths
  })'
$ jekyll serve --host=0.0.0.0 --watch --force_polling
```

and then if you run OSX, type in your terminal:
```
$ open `echo $DOCKER_HOST | sed 's/tcp/http/' | sed 's/2376/4000/'`
```
