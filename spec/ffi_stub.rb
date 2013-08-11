require 'ffi'

module FFI
  module Library
    def ffi_lib(*names)
    end

    def ffi_libraries
    end

    def attach_function(name, func, args, returns = nil, options = nil)
      define_singleton_method(name) {|*the_args|}
    end
  end
end

