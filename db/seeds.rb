# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

disease = Disease.create(:name => 'Primary Congenital Hypothyroidism',
:description => 'Primary congenital hypothyroidism (CH) is a condition that affects the body’s thyroid gland, a small organ in the lower neck. People with CH are unable to produce enough thyroid hormone, a chemical that is essential for healthy growth and development. If left untreated, CH can cause sluggishness, slow growth, and learning delays. However, if detected early and treatment is begun, individuals with CH often can lead healthy lives. - See more at: http://www.babysfirsttest.org/newborn-screening/conditions/primary-congenital-hypothyroidism#sthash.L1AwVFHr.dpuf',
:link => 'http://www.babysfirsttest.org/newborn-screening/conditions/primary-congenital-hypothyroidism',
:early_signs => 'Most babies with primary congenital hypothyroidism (CH) show signs at three to four weeks after birth. Early signs of CH include:

Yellow skin or eyes (known as jaundice)
Sleeping longer or more often
Constipation
Weak muscle tone (called hypotonia)
Swelling around the eyes
Swollen tongue
Cool, pale skin
Large belly with a navel that sticks out
A hoarse-sounding cry
Delayed growth and weight gain
Contact your baby’s doctor as soon as possible if your baby has any of these signs.

- See more at: http://www.babysfirsttest.org/newborn-screening/conditions/primary-congenital-hypothyroidism#sthash.L1AwVFHr.dpuf')
ScreeningLocation.create(:street => '2071 Herndon Avenue', 
    :name => 'Kaiser Permanente Northern California',
    :city => 'Fresno',
    :phone => '(877) 456-0004',
    :zipcode => '93611',
    :disease => disease,
    :state => 'CA')
ScreeningLocation.create(:street => '9300 Valley Childrens Place', 
    :name => 'Kaiser Permanente Northern California',
    :city => 'Madera',
    :phone => '(559) 353-3000',
    :zipcode => '93636',
    :disease => disease,
    :state => 'CA')
ScreeningLocation.create(:street => '1111 Exposition Blvd
Bldg 200',
    :name => 'Prenatal Diagnosis of Northern California',
    :city => 'Sacramento',
    :phone => '(916) 736-6888',
    :zipcode => '95815',
    :disease => disease,
    :homepage => 'http://www.pndx.com/'
    :state => 'CA')
