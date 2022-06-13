require 'rails_helper'

describe 'Notes' do
  context 'when the user is not logged in' do
    describe "#index" do
      it "redirects to login page" do
        get notes_path
        expect(response).to redirect_to(user_session_path)
      end
    end

    describe "#show" do
      let!(:note) { create(:note)}
      it "redirects to login page" do
        get note_path(note)
        expect(response).to redirect_to(user_session_path)
      end
    end

    describe "#update" do
      let!(:note) { create(:note)}
      it "redirects to login page" do
        patch note_path(note, params: {note:{ title: 'test'}})
        expect(response).to redirect_to(user_session_path)
      end
    end

    describe "#destroy" do
      let!(:note) { create(:note)}
      it "redirects to login page" do
        delete note_path(note)
        expect(response).to redirect_to(user_session_path)
      end
    end
  end

  context 'when user is logged in' do
    let(:user) { create(:user) }

    describe "#index" do
      it "redirects to index page" do
        sign_in user
        get notes_path
        expect(response.status).to eq(200)
      end
    end

    describe "#show" do
      let!(:note) { create(:note, user: user)}
      it "redirects to index page" do
        sign_in user
        get note_path(note)

        expect(response.status).to eq(200)
      end
    end

    describe "#update" do
      let!(:note) { create(:note, user: user)}
      it "redirects to index page" do
        sign_in user
        
        put note_path(note, params: { note: { title: 'Update test'}})
        note.reload
        expect(note.title).to eq('Update test')
      end
    end

    describe "#destroy" do
      let!(:note) { create(:note, user: user)}
      let(:request) { delete note_path(note) }
      it "redirects to index page" do
        sign_in user
        
        expect{request}.to change {Note.count}.from(1).to(0)
      end
    end
  end
end