class String
  def sanitize!
    self.replace(sanitize)
  end
  
  def sanitize
    Loofah.scrub_fragment(self, :prune).to_s
  end

  def detag
    self.clone.gsub(/\<.+?\>/, '')
  end
end
