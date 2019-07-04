class AdminSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :email, :role
  attribute :token do |_, params|
    params[:token].to_s
  end
end
