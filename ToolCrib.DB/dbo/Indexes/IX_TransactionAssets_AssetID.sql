-- Supporting index for FK: FK_TransactionAssets_PartAssets
-- Improves asset transaction history lookups
CREATE NONCLUSTERED INDEX [IX_TransactionAssets_AssetID]
	ON [dbo].[TransactionAssets] ([AssetID] ASC);

GO
