module ValidatePresenceOfName
  class Matcher
    
    def initialize(attribute)
      @attribute = attribute
      @message = "can't be blank"
    end
    
    def matches?(model)
      @model = model
      @model.valid?
      # @model.errors.has_key?(@attribute)
      errors = @model.errors[@attribute]
      errors.any? { |error| error == @message }
    end
    
    def validate_presence_of_name(attribute)
      Matcher.new(attribute)
    end
    
    def failure_message
      "#{@model.class} failed to validate :#{@attribute} presence."
    end
    
    def negative_failure_message
      "#{@model.class} validated :#{@attribute} presence."
    end
    
    def with_message(message)
      @message = message
      self 
    end
  end
  
  # RSpec.configure do |config|
  #   config.include ValidatePresenceOfName, type: :model
  # end
end


