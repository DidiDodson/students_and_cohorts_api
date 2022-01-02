class CohortSerializer
  include JSONAPI::Serializer

  def self.find_cohort(cohort)
        {
      "data": {
          "id": cohort.id,
          "type": "cohort",
          "attributes": {
              "name": cohort.name,
              "start_date": cohort.start_date,
              "graduation_date": cohort.graduation_date,
              "number_of_students": cohort.students.count,
              "status": cohort.status
            }
       }
    }
  end
end
