= PostloadModels

* Web: http://opensource.imedo.de/pages/show/postload_models
* GitHub: http://github.com/imedo/postload_models

== DESCRIPTION:

Observers will now register in one of two places. If the class is already loaded then it will work as usual, telling the class that it wants to observe the object’s changes. The magic now happens if the class is not yet loaded, because then the observer will just register with a hash, whose key is the class name, and the class itself will check this hash when being loaded for the first time. All observers in there will be hooked onto the class at load time – but at the model’s load time, not the observer’s.

== FEATURES/PROBLEMS:

* Messes around a little with inheritance.

== SYNOPSIS:

<p>It is backwards compatible, but you only get something out of it, if you don’t use the default way of defining observers:</p>

  class MyObserver < ActiveRecord::Observer
    observe User, Post
  end

<p>This will of course load the models User and Post since you hand it the constants (not just the names). Here the plugin kicks in and modifies the observe method to also accept Strings and Symbols.<br/>
The post-loading way would work like this:</p>


  class MyObserver < ActiveRecord::Observer
    observe 'user', :post, "Comment", :File
  end

<p>That will make sure that none of User, Post, Comment or File will be loaded at this time.</p>

== REQUIREMENTS:

* ActiveRecord

== INSTALL:

* gem install imedo-postload_models



Copyright (c) 2008 [name of plugin creator], released under the MIT license
