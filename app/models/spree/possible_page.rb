module Spree
  class PossiblePage
    def self.matches?(request)
      return false if request.fullpath =~ /(^\/+(admin|racun|kosarica|narocilo|content|login|prijava|pg\/|orders|products|izdelki|oddelki|simptom|proizvajalci|s\/|session|signup|shipments|states|t\/|tax_categories|user)+)/
      !Page.active.find_by_path(request.fullpath).nil?
    end
  end
end