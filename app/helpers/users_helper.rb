module UsersHelper

  def current_user_has_posts?(user)
    user.posts.any?
  end

  def current_user_has_comments?(user)
    user.comments.any?
  end

  def current_user_has_favorites?(user)
    user.favorites.any?
  end

end
