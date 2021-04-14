require 'rails_helper'

RSpec.describe OriginalApp, type: :model do
 pending "add some examples to (or delete) #{__FILE__}"
  before do
    @originalApp = build(:original_app)
  end
  
  describe "#create" do
    it "1.全てのパラメータが存在する場合は正常とする" do
      expect(@originalApp).to be_valid
    end
     
    it "2.作成者名(producer)が存在しない場合はエラーとする" do
      @originalApp.producer = ""
      @originalApp.valid?
      expect(@originalApp.errors[:producer]).to include("を入力してください。")
    end
     
    it "3.作成者名(producer)がnilの場合はエラーとする" do
      @originalApp.producer = nil
      @originalApp.valid?
    end
    
    it "4.アプリURL(url)が存在しない場合はエラーとする" do
      @originalApp.url = ""
      @originalApp.valid?
      expect(@originalApp.errors[:url]).to include("を入力してください。")
    end
    
    it "5.アプリURL(url)がnilの場合はエラーとする" do
      @originalApp.url = nil
      @originalApp.valid?
    end
    
    it "6.サムネ画像(image)が存在しない場合はエラーとする" do
      @originalApp.image = ""
      @originalApp.valid?
      expect(@originalApp.errors[:image]).to include("を入力してください。")
    end
    
    it "7.アプリ名(app_name)が存在しない場合はエラーとする" do
      @originalApp.app_name = ""
      @originalApp.valid?
    end
    
    it "8.アプリ名(app_name)がnilの場合はエラーとする" do
      @originalApp.app_name = nil
      @originalApp.valid?
      expect(@originalApp.errors[:app_name]).to include("を入力してください。")
    end
    
    it "9.説明文(contents)が存在しない場合はエラーとする" do
      @originalApp.contents = ""
      @originalApp.valid?
    end
    
    it "10.説明文(contents)がnilの場合はエラーとする" do
      @originalApp.contents = nil
      @originalApp.valid?
      expect(@originalApp.errors[:contents]).to include("を入力してください。")
    end
    
    it "11.カテゴリid(category_id)が存在しない場合はエラーとする" do
      @originalApp.category_id = ""
      @originalApp.valid?
    end
    
    it "12.カテゴリid(category_id)がnilの場合はエラーとする" do
      @originalApp.category_id = nil
      @originalApp.valid?
      expect(@originalApp.errors[:category_id]).to include("を入力してください。")
    end
  end
end
