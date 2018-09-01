
def measure (n = 1)
  starts_at = Time.now
  n.times do |x|
    yield x
  end
  ends_at = Time.now
  elapsed_time = (ends_at - starts_at)/n
end
