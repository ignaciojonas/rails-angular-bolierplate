module Api
  class Notes < Grape::API

    resource 'notes' do
      desc 'List of all Notes', { entity: Api::Entities::Note }
      get do
        notes = Note.all
        present :notes, notes, with: Api::Entities::Note
      end
    end
  end
end
