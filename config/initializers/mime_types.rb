# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf


#added below 2 line to support file attachment as pdf and other type, as content_type added in model for that support u need to add here type of file supporting for upload.

Mime::Type.register "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", :xlsx, [], %w(xlsx)
Mime::Type.register "application/vnd.ms-office", :xls, [], %w(xls)
