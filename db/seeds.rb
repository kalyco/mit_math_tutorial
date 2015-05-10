if Rails.env.development?

  user = User.find_or_create_by(
    email: "email@email.com",
    encrypted_password: "password"
  )
  user.password = "password"
  user.save

  tutorial = Tutorial.find_or_create_by(
    section: "Lecture 1",
    name: "Mathematics for Computer Science",
    description: "What is a proof? \n\n In a generalized concept it is the method for ascertaining the truth. A mathematical proof is a verification of a proposition by a chain of logical deductions from a set of axioms.

    A proposition is a statement that is either true or false: \n\n

    Proposition 1: For all N in a set of natural numbers (not negative integers), n2 + n + 41 is a prime number.
    'for all' is the quantifier. \n\n
    A predicate is a proposition who's truth depends on the value of a variable(s). \n\n

    Proposition 2: A4 + B4 + C4 = D4 has no positive integers. \n\n

    Elliptic curve is central to the understanding of how to factor large integers \n\n
    Proposition 3: The regions in any map can be colored in 4 colors, so that adjacent regions have different colors.",
    problem: "",
    solution: "",
    difficulty: ""
  )
  tutorial.save
end
