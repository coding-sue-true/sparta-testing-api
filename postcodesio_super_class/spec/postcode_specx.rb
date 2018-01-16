require 'spec_helper'


describe "Post Codes" do

  before(:all) do
    @post_codes = Postcodesio.new
  end

  it "Should be an Hash" do
    expect(@post_codes.single_pc).to be_kind_of(Hash)
  end

  it "Should have status 200" do
    expect(@post_codes.single_pc_status).to eq 200
  end

  it "Results array should have 23 items" do
    expect(@post_codes.single_pc_result.length).to eq 23
  end

  it "Results/codes should have 7 items" do
    expect(@post_codes.single_pc_codes.length).to eq 7
  end

  it "Postcode has to be type of String" do
    expect(@post_codes.single_pc_result['postcode']).to be_kind_of(String)
  end

  it "Country has to be type of String" do
    expect(@post_codes.single_pc_result['country']).to be_kind_of(String)
  end

  it "nhs_ha has to be type of String" do
    expect(@post_codes.single_pc_result['nhs_ha']).to be_kind_of(String)
  end

  it "european_electoral_region has to be type of String" do
    expect(@post_codes.single_pc_result['european_electoral_region']).to be_kind_of(String)
  end

  it "primary_care_trust has to be type of String" do
    expect(@post_codes.single_pc_result['primary_care_trust']).to be_kind_of(String)
  end

  it "region has to be type of String" do
    expect(@post_codes.single_pc_result['region']).to be_kind_of(String)
  end

  it "lsoa has to be type of String" do
    expect(@post_codes.single_pc_result['lsoa']).to be_kind_of(String)
  end

  it "msoa has to be type of String" do
    expect(@post_codes.single_pc_result['msoa']).to be_kind_of(String)
  end

  it "incode has to be type of String" do
    expect(@post_codes.single_pc_result['incode']).to be_kind_of(String)
  end

  it "outcode has to be type of String" do
    expect(@post_codes.single_pc_result['outcode']).to be_kind_of(String)
  end

  it "parliamentary_constituency has to be type of String" do
    expect(@post_codes.single_pc_result['parliamentary_constituency']).to be_kind_of(String)
  end

  it "admin_district" do
    expect(@post_codes.single_pc_result['admin_district']).to be_kind_of(String)
  end

  it "parish has to be type of String" do
    expect(@post_codes.single_pc_result['parish']).to be_kind_of(String)
  end

  it "admin_county has to be null" do
    expect(@post_codes.single_pc_result['admin_county']).to eq(nil)
  end

  it "admin_ward has to be type of String" do
    expect(@post_codes.single_pc_result['admin_ward']).to be_kind_of(String)
  end

  it "ccg has to be type of String" do
    expect(@post_codes.single_pc_result['ccg']).to be_kind_of(String)
  end

  it "nuts has to be type of String" do
    expect(@post_codes.single_pc_result['nuts']).to be_kind_of(String)
  end

  it "codes has to be type of hash" do
    expect(@post_codes.single_pc_codes).to be_kind_of(Hash)
  end

  it "quality has to be type of Integer and be between 1 and 9" do
    expect(@post_codes.single_pc_result['quality']).to be_kind_of(Integer)
    expect(@post_codes.single_pc_result['quality']).to be_between(1,9)
  end

  it "eastings has to be type of Integer and have 6 digits" do
    expect(@post_codes.single_pc_result['eastings']).to be_kind_of(Integer)
    expect(@post_codes.single_pc_result['eastings'].to_s.size).to eq 6
  end

  it "northings has to be type of Integer and have 6 digits" do
    expect(@post_codes.single_pc_result['northings']).to be_kind_of(Integer)
    expect(@post_codes.single_pc_result['northings'].to_s.size).to eq 6
  end

  it "longitude has to be type of Float and be between -180 and 180 degrees" do
    expect(@post_codes.single_pc_result['longitude']).to be_kind_of(Float)
    expect(@post_codes.single_pc_result['longitude']).to be_between(-180,180)
  end

  it "latitude has to be type of Float and be between 0 and 90 degrees" do
    expect(@post_codes.single_pc_result['latitude']).to be_kind_of(Float)
    expect(@post_codes.single_pc_result['latitude']).to be_between(0,90)
  end

  it "inside codes, admin_district has to be a string and have 9 digits" do
    expect(@post_codes.single_pc_codes['admin_district']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['admin_district'].size).to eq 9
  end

  it "inside codes, admin_county has to be a string and have 9 digits" do
    expect(@post_codes.single_pc_codes['admin_county']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['admin_county'].size).to eq 9
  end

  it "inside codes, admin_ward has to be a string and have 9 digits" do
    expect(@post_codes.single_pc_codes['admin_ward']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['admin_ward'].size).to eq 9
  end

  it "inside codes, parish has to be a string and have 9 digits" do
    expect(@post_codes.single_pc_codes['parish']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['parish'].size).to eq 9
  end

  it "inside codes, parliamentary_constituency has to be a string and have 9 digits" do
    expect(@post_codes.single_pc_codes['parliamentary_constituency']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['parliamentary_constituency'].size).to eq 9
  end

  it "inside codes, ccg has to be a string and have 9 digits" do
    expect(@post_codes.single_pc_codes['ccg']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['ccg'].size).to eq 9
  end

  it "inside codes, nuts has to be a string and have 5 digits" do
    expect(@post_codes.single_pc_codes['nuts']).to be_kind_of(String)
    expect(@post_codes.single_pc_codes['nuts'].size).to eq 5
  end

  it "Multiple Post Codes should be an hash" do
    expect(@post_codes.multiple_pc).to be_kind_of(Hash)
  end
  
  it "Multiple Post Codes should have status 200" do
    expect(@post_codes.multiple_pc_status).to eq 200
  end

  it "Multiple Post Codes should " do

  end



end
