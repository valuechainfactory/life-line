# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :drug_allergies
  has_many :food_allergies
  has_many :pre_existing_conditions
  belongs_to :doctor

  has_one_attached :qr_code
  has_one_attached :image

  include Rails.application.routes.url_helpers

  after_create :generate_qr
  def generate_qr
    qr_url = url_for(controller: 'patients',
                     action: 'show',
                     id:,
                     only_path: false,
                     host: 'localhost:3000',
                     source: 'from_qr')
    qrcode = RQRCode::QRCode.new(qr_url)

    png = qrcode.as_png(
      resize_gte_to: false,
      resize_exactly_to: false,
      fill: 'white',
      color: 'black',
      size: 120,
      border_modules: 4,
      module_px_size: 6,
      file: nil # path to write
    )
    image_name = SecureRandom.hex
    IO.binwrite("tmp/#{image_name}.png", png.to_s)

    blob = ActiveStorage::Blob.create_and_upload!(
      io: File.open("tmp/#{image_name}.png"),
      filename: image_name,
      content_type: 'png'
    )

    qr_code.attach(blob)
  end
end
