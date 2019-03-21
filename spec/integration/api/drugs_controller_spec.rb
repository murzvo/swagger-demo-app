require 'swagger_helper'

describe 'Drugs API' do
  path '/api/drugs' do
    get 'Fetch all illegal drugs' do
      response '200', 'OK' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :string },
                   name: { type: :string },
                   formula: { type: :string },
                   hazard: { type: :string },
                   overdose: { type: :integer },
                   created_at: { type: :string },
                   upated_at: { type: :string }
                 }
               }

        run_test!
      end
    end
  end
end
