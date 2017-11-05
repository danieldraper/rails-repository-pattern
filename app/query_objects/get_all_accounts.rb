class GetAllAccounts
  include QueryObject

  def initialize(repository = AccountRepository.new)
    super
  end

  def call
    repository.load_all
  end
end
