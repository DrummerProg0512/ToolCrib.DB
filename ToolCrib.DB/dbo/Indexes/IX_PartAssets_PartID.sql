-- Supporting index for FK: FK_PartAssets_PartsItems
-- Improves asset lookups by part and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_PartAssets_PartID]
	ON [dbo].[PartAssets] ([PartID] ASC);

GO
