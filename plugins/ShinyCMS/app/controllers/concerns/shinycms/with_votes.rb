# frozen_string_literal: true

# ShinyCMS ~ https://shinycms.org
#
# Copyright 2009-2021 Denny de la Haye ~ https://denny.me
#
# ShinyCMS is free software; you can redistribute it and/or modify it under the terms of the GPL (version 2 or later)

module ShinyCMS
  # For controllers that handle upvotes/downvotes via ActsAsVotable
  module WithVotes
    extend ActiveSupport::Concern

    included do
      # Turn a URL param generated by the HasVotes model concern into a class name
      # e.g. shiny_blog-post -> ShinyBlog::Post
      def url_param_to_class_name( url_param )
        url_param.tr( '-', '/' ).classify
      end
    end
  end
end
