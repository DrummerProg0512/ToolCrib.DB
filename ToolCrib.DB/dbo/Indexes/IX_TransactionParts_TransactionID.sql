-- Supporting index for FK: FK_TransactionParts_TransactionHistory
-- Improves transaction detail lookups and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_TransactionParts_TransactionID]
	ON [dbo].[TransactionParts] ([TransactionID] ASC);

GO
