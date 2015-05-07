if Rails.env.development?

  user = User.find_or_create_by(
    email: "email@email.com",
    encrypted_password: "password"
  )
  user.password = "password"
  user.save

  tutorial = Tutorial.find_or_create_by(
    section: "Algorithmic Thinking",
    name: "Peak Finding",
    description: "",
    problem: "",
    solution: "",
    difficulty: ""
  )
  tutorial.save
end
