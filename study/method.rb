class Laputa
  def hover
    vibrate
  end
  def vibrate
    p "vibrated"
  end
end

takalakhan = Laputa.new
takalakhan.hover
