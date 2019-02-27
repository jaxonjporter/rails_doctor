
10.times do
  doctor = Doctor.create(
    name: Faker::FunnyName.name_with_initial
  )
 
  10.times do 
    patient = Patient.create(
      first_name: Faker::Games::SuperSmashBros.fighter,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      date: Faker::Time.forward(23, :morning),
      doctor_id: doctor.id,
      patient_id: patient.id
    )
  end
end

puts "Data Seeded."