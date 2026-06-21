-- Supporting index for FK: FK_PartAssetsAttachments_PartAssets
-- Improves asset attachment lookups and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_PartAssetsAttachments_AssetID]
	ON [dbo].[PartAssetsAttachments] ([AssetID] ASC);

GO
