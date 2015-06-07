namespace :newborn_screened_disorders do
  desc 'Import Newborn Diseases records from cdph.data.ca.gov'
  task :race_ethnicity => :environment do
      # https://cdph.data.ca.gov/Diseases-and-Conditions/Newborn-Screened-Disorders-by-Race-Ethnicity-2009-/ktfd-n9nb
      client = SODA::Client.new(
          {:domain => "cdph.data.ca.gov", 
          :app_token => Figaro.env.app_id })
      response = client.get("ktfd-n9nb", {:disorder_type => 'Primary Congenital Hypothyroidism'})
  end
  
    desc 'Import Newborn Diseases by California Regions from cdph.data.ca.gov'
    task :california_regions => :environment do
      # https://cdph.data.ca.gov/Diseases-and-Conditions/Newborn-Screened-Disorders-by-California-Regions-2/t6pv-avc4
      client = SODA::Client.new(
          {:domain => "cdph.data.ca.gov", 
          :app_token => Figaro.env.app_id })
      response = client.get("t6pv-avc4", {:disease_type => 'Primary Congenital Hypothyroidism (CH)'})
      # TODO: ADD IN MORE NAMES!!
      disease = Disease.find_or_create_by(:name => 'Primary Congenital Hypothyroidism')
      
      puts response.inspect
      response.each do |region|
        Prevalance.create do |prevalance|
          prevalance.disease = disease
          prevalance.disorder_percent = region.disorder_type_by_region
          prevalance.case_count = region.case_count
          prevalance.screened = region.screened_newborns
          prevalance.california_region = region.california_region
          end
      end
      puts Prevalance.all.inspect
    end
end
