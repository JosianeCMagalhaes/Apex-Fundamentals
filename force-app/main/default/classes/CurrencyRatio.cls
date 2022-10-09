public class CurrencyRatio {
	public String currencyInitials;
    public Decimal conversionRatio;
    
    public CurrencyRatio(String initials, Decimal ratio) {
        this.currencyInitials = initials;
        this.conversionRatio = ratio;
    }

}