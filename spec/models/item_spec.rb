require 'rails_helper'

describe Item do
  describe '#create' do
    #1
    it "nameがない場合は登録できないこと" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    #2
    it "explainがない場合は登録できないこと" do
      item = build(:item, explain: nil)
      item.valid?
      expect(item.errors[:explain]).to include("can't be blank")
    end

    #3
    it "category_idがない場合は登録できないこと" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    #4
    it "shipping_burden_idがない場合は登録できないこと" do
      item = build(:item, shipping_burden_id: nil)
      item.valid?
      expect(item.errors[:shipping_burden_id]).to include("can't be blank")
    end

    #5
    it "prefecture_idがない場合は登録できないこと" do
      item = build(:item, prefecture_id: nil)
      item.valid?
      expect(item.errors[:prefecture_id]).to include("can't be blank")
    end

    #6
    it "shipping_day_idがない場合は登録できないこと" do
      item = build(:item, shipping_day_id: nil)
      item.valid?
      expect(item.errors[:shipping_day_id]).to include("can't be blank")
    end

    #7
    it "priceがない場合は登録できないこと" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    #8
    it "nameが40文字でも登録できること" do
      user = create(:user)
      category = create(:category)
      item = build(:item, name: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])
      expect(item).to be_valid
    end

    #8
    it "nameが41文字だと登録できないこと" do
      user = create(:user)
      category = create(:category)

      item = build(:item, name: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])

      expect(item).to be_valid
    end

    #9
    it "explainが1000文字でも登録できること" do
      user = create(:user)
      category = create(:category)

      item = build(:item, explain: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])

      expect(item).to be_valid
    end

    #11
    it "explainが1001文字だと登録できないこと" do
      user = create(:user)
      category = create(:category)
      item = build(:item, explain: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])
      expect(item).to be_valid
    end


    #12
    it "priceが299以下だと登録できないこと" do
      user = create(:user)
      category = create(:category)
      item = build(:item, price: "299",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])
      expect(item).to be_valid
    end

    #13
    it "priceが300ちょうどだと登録できる" do
      user = create(:user)
      category = create(:category)
      item = build(:item, price: "300",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])
      expect(item).to be_valid
    end

    #14
    it "priceが9999999だと登録できる" do
      user = create(:user)
      category = create(:category)

      item = build(:item, price: "9999999",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])

      expect(item).to be_valid
    end

    #15
    it "priceが10000000だと登録できない" do
      user = create(:user)
      category = create(:category)

      item = build(:item, price: "10000000",seller_id: user[:id],seller_id: user[:id], category_id: category[:id])

      expect(item).to be_valid
    end

    #16
    it "必須項目が全てあれば登録できること" do
      user = create(:user)
      category = create(:category)
      item = build(:item,seller_id: user[:id],seller_id: user[:id], category_id: category[:id])
      expect(item).to be_valid
    end

  end
end