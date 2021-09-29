void main() {
  problem3();
  problem4();
}

/**
 * Problem 3  
 * Consider, you’re investing Rs. 1,00,000 in gold, which gives a 3% return every single year. What will be the value of your gold after 7 years?
 */

void problem3() {
  double investment = 100000;
  int years = 7;
  double totalInvestmentRecover = calculateReturnInvestment(investment, years);
  print(totalInvestmentRecover != 0
      ? totalInvestmentRecover
      : "Please verify the values sent");
  //print(totalInvestmentRecover);
}

double calculateReturnInvestment(double investment, int years) {
  const double percentOfReturnPerYear = 0.03;
  double moneyGainPerYear = 0;

  // Validate if the parameters are correct (values up 0)
  if (investment <= 0 || years <= 0) {
    return 0;
  }
  ;

  for (var i = 0; i < years; i++) {
    moneyGainPerYear = (investment * percentOfReturnPerYear);
    investment = investment + moneyGainPerYear;
  }
  return investment;

  // double moneyGainPerYear = (investmnent * percentOfReturnPerYear);
  // return investmnent + (moneyGainPerYear * years);
}

/**
 * Problem 4
 * Consider, you’re living in the United States & you’re want to buy land in India at a price of Rs. 10,00,000. To buy the land you need to give a brokerage commission of 2% and a document/processing fee of 5%. So totally how much amount (in USD) do you need to complete this deal? Where 1 USD = 70 INR 
 */

void problem4() {
  double landPrice = 1000000;
  double totalLandPrice = calculateTotalPriceLand(landPrice);
  print(totalLandPrice != 0 ? totalLandPrice : "Please verify the values sent");
  //print(totalLandPrice);
}

double calculateTotalPriceLand(double landPrice) {
  const double valueUSD = 70; // Equivalence 1 USD to INR
  const double percentBrokerageCommision = 0.02;
  const double percentProcessingFee = 0.05;

  // Validate if the parameters are correct (values up 0)
  if (landPrice <= 0) {
    return 0;
  }
  ;

  double totalTaxes = (landPrice * percentBrokerageCommision) +
      (landPrice * percentProcessingFee);
  double priceAfterTaxes = (landPrice + totalTaxes);

  return (priceAfterTaxes / valueUSD);
}
