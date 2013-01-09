require 'active_model'

def errors_on(attribute)
  self.valid?
    [self.errors[attribute]].flatten.compact
end
alias :error_on :errors_on
