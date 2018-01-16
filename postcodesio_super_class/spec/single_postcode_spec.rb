require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.single_postcode_service
      @postcodesio.get_single_postcode('se96rj')
    end

    it "Should respond with a status message of 200" do
      expect(@postcodesio.get_single_status).to eq 200
    end

    it "Should respond as a hash of results" do
      expect(@postcodesio.get_single_result).to be_kind_of(Hash)
    end

    it "Results array should have 23 items" do
      expect(@postcodesio.get_single_result.length).to eq 23
    end

    it "Results/codes should have 7 items" do
      expect(@postcodesio.get_codes.length).to eq 7
    end

    it "Postcode has to be type of String" do
      expect(@postcodesio.get_postcode).to be_kind_of(String)
    end

    it "Country has to be type of String" do
      expect(@postcodesio.get_country).to be_kind_of(String)
    end

    it "nhs_ha has to be type of String" do
      expect(@postcodesio.get_nhs_ha).to be_kind_of(String)
    end

    it "european_electoral_region has to be type of String" do
      expect(@postcodesio.get_european_electoral_region).to be_kind_of(String)
    end

    it "primary_care_trust has to be type of String" do
      expect(@postcodesio.get_primary_care_trust).to be_kind_of(String)
    end

    it "region has to be type of String" do
      expect(@postcodesio.get_region).to be_kind_of(String)
    end

    it "lsoa has to be type of String" do
      expect(@postcodesio.get_lsoa).to be_kind_of(String)
    end

    it "msoa has to be type of String" do
      expect(@postcodesio.get_msoa).to be_kind_of(String)
    end

    it "incode has to be type of String" do
      expect(@postcodesio.get_incode).to be_kind_of(String)
    end

    it "outcode has to be type of String" do
      expect(@postcodesio.get_outcode).to be_kind_of(String)
    end

    it "parliamentary_constituency has to be type of String" do
      expect(@postcodesio.get_parliamentary_constituency).to be_kind_of(String)
    end

    it "admin_district has to be type of string" do
      expect(@postcodesio.get_admin_district).to be_kind_of(String)
    end

    it "parish has to be type of String" do
      expect(@postcodesio.get_parish).to be_kind_of(String)
    end

    it "admin_county has to be null" do
      expect(@postcodesio.get_admin_county).to eq(nil)
    end

    it "admin_ward has to be type of String" do
      expect(@postcodesio.get_admin_ward).to be_kind_of(String)
    end

    it "ccg has to be type of String" do
      expect(@postcodesio.get_ccg).to be_kind_of(String)
    end

    it "nuts has to be type of String" do
      expect(@postcodesio.get_nuts).to be_kind_of(String)
    end

    it "codes has to be type of hash" do
      expect(@postcodesio.get_codes).to be_kind_of(Hash)
    end

    it "quality has to be type of Integer and be between 1 and 9" do
      expect(@postcodesio.get_quality).to be_kind_of(Integer)
      expect(@postcodesio.get_quality).to be_between(1,9)
    end

    it "eastings has to be type of Integer and have 6 digits" do
      expect(@postcodesio.get_eastings).to be_kind_of(Integer)
      expect(@postcodesio.get_eastings.to_s.size).to eq 6
    end

    it "northings has to be type of Integer and have 6 digits" do
      expect(@postcodesio.get_northings).to be_kind_of(Integer)
      expect(@postcodesio.get_northings.to_s.size).to eq 6
    end

    it "longitude has to be type of Float and be between -180 and 180 degrees" do
      expect(@postcodesio.get_longitude).to be_kind_of(Float)
      expect(@postcodesio.get_longitude).to be_between(-180,180)
    end

    it "latitude has to be type of Float and be between 0 and 90 degrees" do
      expect(@postcodesio.get_latitude).to be_kind_of(Float)
      expect(@postcodesio.get_latitude).to be_between(0,90)
    end

    it "inside codes, admin_district has to be a string and have 9 digits" do
      expect(@postcodesio.get_codes_admin_district).to be_kind_of(String)
      expect(@postcodesio.get_codes_admin_district.size).to eq 9
    end

    it "inside codes, admin_county has to be a string and have 9 digits" do
      expect(@postcodesio.get_codes_admin_county).to be_kind_of(String)
      expect(@postcodesio.get_codes_admin_county.size).to eq 9
    end

    it "inside codes, admin_ward has to be a string and have 9 digits" do
      expect(@postcodesio.get_codes_admin_ward).to be_kind_of(String)
      expect(@postcodesio.get_codes_admin_ward.size).to eq 9
    end

    it "inside codes, parish has to be a string and have 9 digits" do
      expect(@postcodesio.get_codes_parish).to be_kind_of(String)
      expect(@postcodesio.get_codes_parish.size).to eq 9
    end

    it "inside codes, parliamentary_constituency has to be a string and have 9 digits" do
      expect(@postcodesio.get_codes_parliamentary_constituency).to be_kind_of(String)
      expect(@postcodesio.get_codes_parliamentary_constituency.size).to eq 9
    end

    it "inside codes, ccg has to be a string and have 9 digits" do
      expect(@postcodesio.get_codes_ccg).to be_kind_of(String)
      expect(@postcodesio.get_codes_ccg.size).to eq 9
    end

    it "inside codes, nuts has to be a string and have 5 digits" do
      expect(@postcodesio.get_codes_nuts).to be_kind_of(String)
      expect(@postcodesio.get_codes_nuts.size).to eq 5
    end
  end
end
