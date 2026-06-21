-- Supporting index for FK: FK_TransactionParts_PartsItems
-- Improves part transaction lookups and part movement tracking
CREATE NONCLUSTERED INDEX [IX_TransactionParts_PartID]
	ON [dbo].[TransactionParts] ([PartID] ASC);

GO
