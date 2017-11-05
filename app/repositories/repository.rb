module Repository
  def initialize(orm_adapter)
    @orm_adapter = orm_adapter
  end

  def load_all
    orm_adapter.find_each.lazy.map &method(:map_record)
  end

  private
  
  attr_reader :orm_adapter
end
