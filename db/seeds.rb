crimes_list = [{ crime_id: 1, charge: "DUI" },
								{ crime_id: 2, charge: "Sexual harrassment or assault" },
								{ crime_id: 3, charge: "Theft"},
							  { crime_id: 4, charge: "Disorderly conduct"},
							  { crime_id: 5, charge: "Domestic abuse"},
							  { crime_id: 6, charge: "Speeding or reckless driving"},
							  { crime_id: 7, charge: "Weapons possession"},
							  { crime_id: 8, charge: "Drug possession"},
							  { crime_id: 9, charge: "Trespassing"},
							  { crime_id: 10, charge: "Obscenity or indecency violations"},
							  { crime_id: 11, charge: "Prostitution"},
							  { crime_id: 12, charge: "Public intoxication"},
							  { crime_id: 13, charge: "Pedophilia"},
							  { crime_id: 14, charge: "Obstruction of justice"},
							  { crime_id: 15, charge: "Probation violations or contempt"},
							  { crime_id: 16, charge: "Fraud or larceny or forgery"},
							  { crime_id: 17, charge: "Criminal damage"},
							  { crime_id: 18, charge: "Assault"},
							  { crime_id: 19, charge: "Tax evasion"},
							  { crime_id: 20, charge: "Illicit smuggling or selling"},
							  { crime_id: 21, charge: "Animal cruelty"},
							  { crime_id: 22, charge: "Arson"},
							  { crime_id: 23, charge: "Murder"},
							  ]

crimes_list.each do |crime|
  Crime.create(charge: crime[:charge])
end