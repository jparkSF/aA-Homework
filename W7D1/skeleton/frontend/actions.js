const selectCurrency = (baseCurrency, rates) => ({
    
    
    type: "SWITCH_CURRENCY",
    baseCurreny: baseCurrency,
    rates: rates 
});

export default selectCurrency;