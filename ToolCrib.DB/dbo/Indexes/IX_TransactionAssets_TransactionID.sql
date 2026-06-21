-- Supporting index for FK: FK_TransactionAssets_TransactionHistory
-- Improves transaction asset association lookups
CREATE NONCLUSTERED INDEX [IX_TransactionAssets_TransactionID]
	ON [dbo].[TransactionAssets] ([TransactionID] ASC);

GO
