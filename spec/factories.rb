Factory.define :project do |p|
  p.name "hudson_monitor"
  p.state "successful"
end

Factory.define :build do |b|
  b.project_id { Factory :project }
  b.state "successful"
end