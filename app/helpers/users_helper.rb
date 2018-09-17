module UsersHelper
  def gravatar_for(user)
    # Generates hex token
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"

    # Creates img element
    image_tag(gravatar_url, alt: user.name)
  end
end