# Mostrar una imagen en la consola
require "mini_magick"

# cargar la imagen
image = MiniMagick::Image.open("flaco.jpeg")

# reducir la imagen
image.resize("330x330")

#puts image.get_pixels[0][0]

#mostrar la imagen
image.width.times do |x|
  image.height.times do |y|
    pixel = image.get_pixels[x][y]
    grey = (pixel[0] + pixel[1] + pixel[2]) / 3

    if grey < 50
      print " "
    elsif grey <= 100
      print "?"
    elsif grey <= 150
      print "*"
    elsif grey <= 200
      print "@"
    else
      print "#"
    end
  end
  puts
end

