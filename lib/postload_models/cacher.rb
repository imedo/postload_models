class ActiveRecord::Observer
  class_inheritable_accessor :observe_classes
  
  cattr_accessor :observed_models
  self.observed_models = {}

  def initialize
    observed_classes.each do |klass|
      konst = klass.to_s.classify
      if Object.const_defined?(konst)
        konst.constantize.add_observer self
      else
        (self.observed_models[konst] ||= []) << self.class
      end
    end
  end

  def self.observe(*models)
    self.observe_classes ||= []
    self.observe_classes << models
  end

  def self.observed_classes
    observed_class
    (self.observe_classes ||= []).flatten.compact.uniq
  end

  def self.observed_class
    self.observe_classes ||= []
    self.observe_classes << name[/(.*)Observer/, 1]
  end
  
end
