require "peeps"

RSpec.describe Peeps do
  describe '.all' do
    it 'returns all peeps' do

    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps (message) VALUES ('This is a peep!');")
    connection.exec("INSERT INTO peeps (message) VALUES ('This is also a peep!!');")

    peeps = Peeps.all

    expect(peeps).to include("This is a peep!")
    expect(peeps).to include("This is also a peep!!")
    end
  end

  describe '.create' do
    it 'creates a new peep' do
      Peeps.create(message: 'This is my third peep!!!')

      expect(Peeps.new).to include 'This is my third peep!!!'
    end
  end
end
