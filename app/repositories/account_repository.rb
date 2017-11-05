class AccountRepository
  include Repository

  def initialize(db = Account)
    super
  end

  private

  def map_record(record)
    AccountEntity.new.tap do |account|
      account.id = record.id
      account.name = record.name
    end
  end
end
