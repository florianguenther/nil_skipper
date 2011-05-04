module NilSkipper
  def self.included(base)
		base.class_eval do
			alias_method :old_serializable_attributes, :serializable_attributes
			def serializable_attributes
				old_serializable_attributes.delete_if {|attribute| attribute.value.nil?}
			end
		end
  end
end

ActiveRecord::XmlSerializer.send(:include, NilSkipper) unless ActiveRecord::XmlSerializer.include?(NilSkipper)