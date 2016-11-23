class Connection < ApplicationRecord
  belongs_to :packer
  belongs_to :mission
end
