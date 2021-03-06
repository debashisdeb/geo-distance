require 'spec_helper'

describe "GeoDistance core extensions" do
  
  describe 'unit_to(other)' do  
    describe '#radians_to' do  
      it 'should convert radians to kms' do
        5.radians_to(:kms).should be_within(2).of 556
      end
    end

    describe '#kms_to' do  
      it 'should convert radians to kms' do
        5.kms_to(:feet).should be_within(1000).of 16000
      end
    end
  end

  describe '#radians' do  
    it 'should convert Fixnum to GeoDistance' do
      5.radians.should be_a GeoDistance
      5.radians.distance.should == 5
      5.radians.unit.should == :radians
      5.radians.as_kms.should be_within(2).of 556
    end
  end

  describe '#kms' do  
    it 'should convert Fixnum to GeoDistance' do
      5.kms.should be_a GeoDistance
      5.kms.distance.should == 5
      5.kms.unit.should == :kms
    end
  end

  describe '#kms' do  
    it 'should convert Float to GeoDistance' do
      5.2.kms.should be_a GeoDistance
      5.2.kms.distance.should == 5.2
      5.2.kms.unit.should == :kms
    end
  end

  describe '#meters' do  
    it 'should convert Float to GeoDistance' do
      5.2.meters.should be_a GeoDistance
      5.2.meters.distance.should == 5.2
      5.2.meters.unit.should == :meters
    end
  end

  describe '#meter' do  
    it 'should convert Float to GeoDistance' do
      2.meter.should be_a GeoDistance
      5.2.meter.distance.should == 5.2
      5.2.meter.unit.should == :meters
    end
  end

  describe '#to_radians' do  
    it 'should convert degrees to radians' do
      180.to_radians.should be_within(0.1).of 3.14159274
    end
  end
end
