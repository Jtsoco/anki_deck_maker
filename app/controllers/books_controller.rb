class BooksController < ApplicationController
  def upload
    file = params[:pdf_file].tempfile
    reader = PDF::Reader.new(file)

    puts reader.info

    text_full = read_pdf_pages(reader)
    # TODO count the words
    # eliminate duplicates
    # eliminiate common words
    # translate words
    # write to csv
    # give csv download link to individuals
    # change front-end to send javascript post
    # change backend to send json reply
    # allow new csv to be downloaded, json reply lets that happen
    # delete csv
    raise
    file.unlink
  end

  def read_pdf_pages(reader)
    full_text = ""
    reader.pages.each do |page|
      full_text += (" " + page.text)
    end
    full_text
  end

end
