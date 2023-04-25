class BooksController < ApplicationController
  def upload
    file = params[:pdf_file].tempfile
    reader = PDF::Reader.new(file)

    puts reader.info
    # raise
    file.unlink
  end
end
