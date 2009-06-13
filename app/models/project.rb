require 'xml'

class Project < ActiveRecord::Base
  has_many :builds

  def self.load(location)
    xml = File.read(location)
    parser, parser.string = XML::Parser.new, xml
    doc, project = parser.parse, []
    doc.find('//Projects/Project').each do |p|
      cc_project = p.attributes.inject({}) { |h, a| h[a.name] = a.value; h }
      g = Project.create!(:name => cc_project['name'], :state => cc_project['lastBuildStatus'])
    end
  end
end
