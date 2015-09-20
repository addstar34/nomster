class Photo < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

	mount_uploader :picture, PictureUploader

	validate :picture_size_validation

	private

	def picture_size_validation
		errors[:picture] << "Must be less than 1MB" if picture.size > 1.megabytes
	end

end
