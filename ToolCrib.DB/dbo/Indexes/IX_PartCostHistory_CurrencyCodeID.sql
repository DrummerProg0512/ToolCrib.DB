-- Supporting index for FK: FK_PartCostHistory_CurrencyCodes
-- Improves joins and lookup performance on currency conversions
CREATE NONCLUSTERED INDEX [IX_PartCostHistory_CurrencyCodeID]
	ON [dbo].[PartCostHistory] ([CurrencyCodeID] ASC);

GO
