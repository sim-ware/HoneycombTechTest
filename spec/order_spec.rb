require 'order'

describe Order do

  describe "::new" do
    subject { Order.new }

    it "creates a new Order" do
      expect(subject).to be_instance_of(Order)
    end

    it "has a default empty attributes" do
      expect(subject.clock).to eq('')
      expect(subject.standard_del).to eq([])
      expect(subject.express_del).to eq([])
      expect(subject.price).to eq(0)
      expect(subject.discount_price).to eq(0)
    end
  end

  describe '#clock_number'do
    it 'stores a string for the "Clock" number' do
      subject.clock_number('WNP/SWCL001/010')
      expect(subject.clock).to eq 'WNP/SWCL001/010'
    end
  end

  describe '#standard_delivery_companies' do
    it 'stores an Array for "standard_del" Companies' do
      subject.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
      expect(subject.standard_del).to eq ['Disney', 'Discovery', 'Viacom']
    end
  end

  describe '#express_delivery_companies' do
    it 'stores a Array for "express_del" Companies' do
      subject.express_delivery_companies('Horse & County')
      expect(subject.express_del).to eq ['Horse & County']
    end
  end

end
