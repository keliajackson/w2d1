require_relative "piece.rb"

class Nullpiece < Piece

    def initialize
        @pos = []
    end

    def self.to_s
        "[ ]"
    end
end