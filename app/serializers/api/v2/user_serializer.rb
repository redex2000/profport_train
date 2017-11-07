class Api::V2::UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin?

  private
  def admin?
    admin?
  end
end
