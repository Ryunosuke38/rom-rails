setup = Rails.application.config.rom.setup

setup.relation(:users) do

  def index
    order(:name)
  end

  def by_name(name)
    index.where(name: name)
  end

end
