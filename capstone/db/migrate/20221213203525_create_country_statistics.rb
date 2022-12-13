class CreateCountryStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :country_statistics do |t|
      t.string :name
      t.integer :mobilephones, :limit => 53, :null => true
      t.integer :mortalityunder5, :limit => 53, :null => true
      t.integer :healthexpenditurepercapita, :limit => 53, :null => true
      t.integer :healthexpenditureppercentGDP, :limit => 53, :null => true
      t.integer :population, :limit => 53, :null => true
      t.integer :populationurban, :limit => 53, :null => true
      t.integer :birthrate, :limit => 53, :null => true
      t.integer :lifeexpectancy, :limit => 53, :null => true
      t.integer :GDP, :limit => 53, :null => true

      t.timestamps
    end
  end
end
