public class UniversityClass {
// attributes
    public List<Student> studentList = new List<Student>();
    public Graduation graduation;

//methods
    public List<Student> findByLastName (String searchText) {
        List <Student> filteredList = new List<Student>();

        for (Student student : this.studentList) {
            if (student.lastName.toLowerCase().contains(searchText.toLowerCase())) {
                filteredList.add(student);
            }
        }
        return filteredList;
    }

    public List<Student> filterByMinor() {
        List<Student> filteredList = new List<Student>();

        for (Student student : this.studentList) {
            if (!student.isLegal) {
                filteredList.add(student);
            }
        }
        return filteredList;
    }

    public List<Student> filterByGrade(Decimal minGradeRange, Decimal maxGradeRange) {
        List<Student> filteredList = new List<Student>();

        for (Student student : this.studentList) {
            if ((minGradeRange == null && maxGradeRange != null) && student.averageGrade <= maxGradeRange) {

            }
            else if ((minGradeRange !=null && maxGradeRange == null) && student.averageGrade >= minGradeRange) {
                filteredList.add(student);
            }
            else if ((minGradeRange != null && maxGradeRange != null) && (student.averageGrade >= minGradeRange && student.averageGrade <= maxGradeRange)) {
                filteredList.add(student);
            }
        }
        return filteredList;
    }

    public Map<String, List<Student>> getByCountry(List<String> countryList) {
        Map<String, List<Student>> countryToStudentMap = new Map<String, List<Student>>();

        for(Student student : this.studentList) {
            if(countryList.isEmpty () || countryList.contains(student.country)) {
                if(countryToStudentMap.containsKey(student.country)) {
                    countryToStudentMap.get(student.country).add(student);
                }
                else {
                    countryToStudentMap.put(student.country, new List<Student> {student});
                }
            }
        }

        return countryToStudentMap;
    }
}