require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "#home" do
    it "正常にレスポンスを返すこと" do
      get root_path
      expect(response).to have_http_status :ok
    end

    it "タイトルが正しいこと" do
      get root_path
      expect(response.body).to include "#{base_title}"
    end
  end
  
  describe "#help" do
    it "正常にレスポンスを返すこと" do
      get help_path
      expect(response).to have_http_status :ok
    end

    it "タイトルが正しいこと" do
      get help_path
      expect(response.body).to include "Help | #{base_title}"
    end
  end

  describe "#about" do
    it "正常にレスポンスを返すこと" do
      get about_path
      expect(response).to have_http_status :ok
    end

    it "タイトルが正しいこと" do
      get about_path
      expect(response.body).to include "About | #{base_title}"
    end
  end
end
