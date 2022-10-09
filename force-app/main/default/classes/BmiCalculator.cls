public with sharing class BmiCalculator {
    public Decimal height;
    public Decimal weight;
    public String gender;

    public BmiCalculator(Decimal bmiHeight, Decimal bmiWeight, String bmiGender) {
        this.height = bmiHeight;
        this.weight = bmiWeight;
        this.gender = bmiGender;
    }

    public decimal calcBMI() {
        return (this.weight) / (this.height * this.height);
    }

    public String getCondition(Decimal bmi) {
        if(this.gender == 'F') {
            if(bmi < 19.1) {
                return 'Underweight';
            }
            else if (bmi < 25.8) {
                return 'Regular Weight';
            }
            else if (bmi < 27.3) {
                return 'Slightly Overweight';
            }
            else if (bmi < 31.1) {
                return 'Overweight';
            }
            else {
                return 'Obese';
            }
        }
        else if (this.gender == 'M') {
            if (bmi < 20.7) {
                return 'Underweight';
            }
            else if (bmi < 26.4) {
                return 'Regular Weight';
            }
            else if (bmi < 27.8) {
                return 'Slightly Overweight';
            }
            else if (bmi < 32.3) {
                return 'Overweight';
            }
            else {
                return 'Obese';
            }
        }
        else {
            return 'Gender invalid';
        }
    }
}
