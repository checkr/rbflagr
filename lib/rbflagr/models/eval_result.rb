=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice. The base path for all the APIs is \"/api/v1\". 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'date'

module Flagr
  class EvalResult
    attr_accessor :flag_id

    attr_accessor :flag_key

    attr_accessor :flag_snapshot_id

    attr_accessor :segment_id

    attr_accessor :variant_id

    attr_accessor :variant_key

    attr_accessor :variant_attachment

    attr_accessor :eval_context

    attr_accessor :timestamp

    attr_accessor :eval_debug_log

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'flag_id' => :'flagID',
        :'flag_key' => :'flagKey',
        :'flag_snapshot_id' => :'flagSnapshotID',
        :'segment_id' => :'segmentID',
        :'variant_id' => :'variantID',
        :'variant_key' => :'variantKey',
        :'variant_attachment' => :'variantAttachment',
        :'eval_context' => :'evalContext',
        :'timestamp' => :'timestamp',
        :'eval_debug_log' => :'evalDebugLog'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'flag_id' => :'Integer',
        :'flag_key' => :'String',
        :'flag_snapshot_id' => :'Integer',
        :'segment_id' => :'Integer',
        :'variant_id' => :'Integer',
        :'variant_key' => :'String',
        :'variant_attachment' => :'Object',
        :'eval_context' => :'EvalContext',
        :'timestamp' => :'String',
        :'eval_debug_log' => :'EvalDebugLog'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'flagID')
        self.flag_id = attributes[:'flagID']
      end

      if attributes.has_key?(:'flagKey')
        self.flag_key = attributes[:'flagKey']
      end

      if attributes.has_key?(:'flagSnapshotID')
        self.flag_snapshot_id = attributes[:'flagSnapshotID']
      end

      if attributes.has_key?(:'segmentID')
        self.segment_id = attributes[:'segmentID']
      end

      if attributes.has_key?(:'variantID')
        self.variant_id = attributes[:'variantID']
      end

      if attributes.has_key?(:'variantKey')
        self.variant_key = attributes[:'variantKey']
      end

      if attributes.has_key?(:'variantAttachment')
        self.variant_attachment = attributes[:'variantAttachment']
      end

      if attributes.has_key?(:'evalContext')
        self.eval_context = attributes[:'evalContext']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'evalDebugLog')
        self.eval_debug_log = attributes[:'evalDebugLog']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          flag_id == o.flag_id &&
          flag_key == o.flag_key &&
          flag_snapshot_id == o.flag_snapshot_id &&
          segment_id == o.segment_id &&
          variant_id == o.variant_id &&
          variant_key == o.variant_key &&
          variant_attachment == o.variant_attachment &&
          eval_context == o.eval_context &&
          timestamp == o.timestamp &&
          eval_debug_log == o.eval_debug_log
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [flag_id, flag_key, flag_snapshot_id, segment_id, variant_id, variant_key, variant_attachment, eval_context, timestamp, eval_debug_log].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Flagr.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
