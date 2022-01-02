class StudentSerializer
  include JSONAPI::Serializer

  # attributes :first_name, :last_name, :preferred_name, :pronouns, :email, :github_username, :slack_username

  def self.all_students(students)
    {
      "data": students.map do |s|
              {
              "id": s.id,
              "type": "student",
              "attributes": {
                "first_name": s.first_name,
                "last_name": s.last_name,
                "preferred_name": s.preferred_name,
                "pronouns": s.pronouns,
                "email": s.email,
                "github_username": s.github_username,
                "slack_username": s.slack_username
              }
            }
      end
    }
  end
end
