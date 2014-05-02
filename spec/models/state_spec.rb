require 'spec_helper'

describe State do
  before { @state = State.new(name: 'Massachusetts', abbr: 'MA', fips: '25')}

  subject { @state }

  it { should respond_to :name }
  it { should respond_to :abbr }
  it { should respond_to :fips }

  it { should respond_to :municipalities }

  it { should be_valid }

  describe "#name" do
    context "when absent" do
      before { @state.name = " " }
      it { should_not be_valid }
    end
    context "when too short" do
      before { @state.name = "a" * 2 }
      it { should_not be_valid }
    end
    context "when too long" do
      before { @state.name = "a" * 26 }
      it { should_not be_valid }
    end
  end

  describe "#abbr" do
    context "when absent" do
      before { @state.abbr = " " }
      it { should_not be_valid }
    end
    context "when too short" do
      before { @state.abbr = "a" * 1 }
      it { should_not be_valid }
    end
    context "when too long" do
      before { @state.abbr = "a" * 3 }
      it { should_not be_valid }
    end
  end

  describe "#fips" do
    context "when absent" do
      before { @state.fips = " " }
      it { should_not be_valid }
    end
    context "when too short" do
      before { @state.fips = "a" * 1 }
      it { should_not be_valid }
    end
    context "when too long" do
      before { @state.fips = "a" * 3 }
      it { should_not be_valid }
    end
  end


end
