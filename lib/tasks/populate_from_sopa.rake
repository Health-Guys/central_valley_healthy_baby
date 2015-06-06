namespace :newborn_screened_disorders do
  desc 'Import Newborn Diseases records from cdph.data.ca.gov'
  task :race_ethnicity => :environment do
      # https://cdph.data.ca.gov/Diseases-and-Conditions/Newborn-Screened-Disorders-by-Race-Ethnicity-2009-/ktfd-n9nb
      client = SODA::Client.new(
          {:domain => "cdph.data.ca.gov", 
          :app_token => Figaro.env.app_id })
      response = client.get("ktfd-n9nb", {:disorder_type => "white"})
      puts response.inspect
  end
end
