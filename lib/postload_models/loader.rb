module PostloadModels
  module Loader
    def inherited(klass)
      klass.observation_command
      super
    end

    def observation_command
      return nil if (all_observers = ActiveRecord::Observer.observed_models[self.name]).blank?
      all_observers.each do |observer|
        self.add_observer(observer.instance)
        self.class_eval 'def after_find() end' unless self.method_defined?(:after_find)
      end
    end
  end
end