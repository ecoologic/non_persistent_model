require "non_persistent_model/version"

# main gem container
module NonPersistentModel

  # base class to make models that doesn't access the db
  # but behave the same
  # e.g.: ContactForm < NonPersistentModel
  class NonPersistentModel
  
    # to use validates_presence_of etc..
    include ActiveModel::Validations
    # to use - form_for @contact_form
    include ActiveModel::Conversion
  
    # e.g.: ContactForm.new(params[:contact_form])
    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  
    # will not try to access the db
    def persisted?
      false
    end
  
  end

end
