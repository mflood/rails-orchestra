# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create [
                {:name => "1st Mandolin"},
                {:name => "2nd Mandolin"},
                {:name => "Guitar"},
                {:name => "Guitar/Mandolin"},
                {:name => "Mandola"},
                {:name => "Mandocello"},
                {:name => "Octave Mandolin"},
                {:name => "Bass"},
                {:name => "Librarian"},
            ]
PerformanceType.create [
                {:name => "Rehearsal"},
                {:name => "Dress Rehearsal"},
                {:name => "Performance"},
            ]
Location.create [
                {:name => "Wynkoop"},
                {:name => "Community Center"},
                ]
Interval.create [
               {:name => "1st Half"},
               {:name => "2nd Half"},
               {:name => "Encore"},
               {:name => "Rehearsal"},
               ]
Tag.create [
            {:name => "Major"},
            {:name => "Minor"},
            {:name => "A"},
            {:name => "Ab"},
            {:name => "B"},
            {:name => "Bb"},
            {:name => "C"},
            {:name => "C#"},
            {:name => "D"},
            {:name => "Db"},
            {:name => "E"},
            {:name => "Eb"},
            {:name => "F"},
            {:name => "F#"},
            {:name => "G"},
            {:name => "Gb"},
            {:name => "Italian"},
            {:name => "Classical"},
            {:name => "Performance Ready"},
            {:name => "Standard"},
            {:name => "Needs Work"},
            {:name => "New"},
           ]
Ensemble.create [
           {:name => "Denver Mandolin Orchestra"},
          ]
